
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int lane_count; int* train_set; } ;


 int DP_TRAIN_MAX_SWING_REACHED ;

__attribute__((used)) static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp)
{
 int lane;

 for (lane = 0; lane < intel_dp->lane_count; lane++)
  if ((intel_dp->train_set[lane] &
       DP_TRAIN_MAX_SWING_REACHED) == 0)
   return 0;

 return 1;
}
