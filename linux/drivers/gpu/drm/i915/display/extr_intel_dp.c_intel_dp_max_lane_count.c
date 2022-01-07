
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int max_link_lane_count; } ;



int intel_dp_max_lane_count(struct intel_dp *intel_dp)
{
 return intel_dp->max_link_lane_count;
}
