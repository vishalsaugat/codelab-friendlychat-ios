#!/usr/bin/env bash

set -eo pipefail

EXIT_STATUS=0

(xcodebuild \
  -workspace ${DIR}/FriendlyChat${LANGUAGE}.xcworkspace \
  -scheme FriendlyChat${LANGUAGE} \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone XR' \
  build \
  #test \
  ONLY_ACTIVE_ARCH=YES \
  CODE_SIGNING_REQUIRED=NO \
  | xcpretty) || EXIT_STATUS=$?
  
  exit $EXIT_STATUS
