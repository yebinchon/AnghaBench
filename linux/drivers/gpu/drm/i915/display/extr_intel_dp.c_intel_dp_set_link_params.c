
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int link_trained; int link_rate; int link_mst; int lane_count; } ;



void intel_dp_set_link_params(struct intel_dp *intel_dp,
         int link_rate, u8 lane_count,
         bool link_mst)
{
 intel_dp->link_trained = 0;
 intel_dp->link_rate = link_rate;
 intel_dp->lane_count = lane_count;
 intel_dp->link_mst = link_mst;
}
