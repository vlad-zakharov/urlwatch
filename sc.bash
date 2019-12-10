#!/bin/bash

echo -n "Date: "
cat $2 | grep "Date and time" | awk -F "[<>]" '{print $7}'
echo -n "Number of invitations issued: "
cat $2 | grep "invitations issued" | awk -F "[<>]" '{print $7}'
echo -n "New round cut-off score: "
cat $2 | grep "CRS score of" | awk -F "[<>]" '{print $7}' | tr '\n' ' '
