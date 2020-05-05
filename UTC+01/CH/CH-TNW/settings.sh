#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="CH-TNW"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][wikidata~'^(Q12172|Q12146|Q854013|Q533676|Q660275|Q854081)$'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Tarifverbund Nordwestschweiz"
NETWORK_SHORT="TNW"

ANALYSIS_PAGE="Switzerland:Public_Transport/TNW/Analysis"
ANALYSIS_TALK="Talk:Switzerland:Public_Transport/TNW/Analysis"
WIKI_ROUTES_PAGE="Switzerland:Public_Transport/TNW/Analysis/CH-TNW-Routes"

ANALYSIS_OPTIONS="--max-error=10 --check-access --check-way-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --language=de
# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Kantone Basel-Stadt (BS), Basel-Landschaft (BL), Bezirke Rheinfelden (AG), Laufenburg (AG), Dorneck (SO), Thierstein (SO)"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Bwikidata~%22^(Q12172|Q12146|Q854013|Q533676|Q660275|Q854081)$%22%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Tarifverbund Nordwestschweiz"
PTNA_WWW_NETWORK_LINK="https://www.tnw.ch/"

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="TNW Lines"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
