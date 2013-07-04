#!/usr/bin/perl

use CGI qw/:standard/;
use strict;
use warnings;

## I know, old old CGI
my $deploy = CGI->new;
print header,start_html();

## Rough check for Github addresses
if( remote_addr() =~ /204.232.175/ || remote_addr() =~ /192.30.252/)
{
    # Adam M Dutko
#    || remote_addr() =~ /68.109.235.119/) {

    ## DEBUG
    #print html("Allowed.");

    ## Get the latest code
    `git pull`;

    ## Copy contents
    `cp -rp www/ ../`;

} else {

    ## Be polite to others
    print html("Hello, how can I help you?<br />");

}

end_html;
