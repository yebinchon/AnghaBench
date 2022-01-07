
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct intel_dp {int max_link_rate; } ;


 scalar_t__ intel_dp_max_lane_count (struct intel_dp*) ;

__attribute__((used)) static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
           u8 lane_count)
{





 if (link_rate == 0 ||
     link_rate > intel_dp->max_link_rate)
  return 0;

 if (lane_count == 0 ||
     lane_count > intel_dp_max_lane_count(intel_dp))
  return 0;

 return 1;
}
