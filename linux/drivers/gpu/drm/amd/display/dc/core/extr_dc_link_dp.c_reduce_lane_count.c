
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_lane_count { ____Placeholder_dc_lane_count } dc_lane_count ;





 int LANE_COUNT_UNKNOWN ;

__attribute__((used)) static enum dc_lane_count reduce_lane_count(enum dc_lane_count lane_count)
{
 switch (lane_count) {
 case 130:
  return 128;
 case 128:
  return 129;
 case 129:
  return LANE_COUNT_UNKNOWN;
 default:
  return LANE_COUNT_UNKNOWN;
 }
}
