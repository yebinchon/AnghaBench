
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DP_LANE_CR_DONE ;
 int EINVAL ;
 int analogix_dp_get_lane_status (int*,int) ;

__attribute__((used)) static int analogix_dp_clock_recovery_ok(u8 link_status[2], int lane_count)
{
 int lane;
 u8 lane_status;

 for (lane = 0; lane < lane_count; lane++) {
  lane_status = analogix_dp_get_lane_status(link_status, lane);
  if ((lane_status & DP_LANE_CR_DONE) == 0)
   return -EINVAL;
 }
 return 0;
}
