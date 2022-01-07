
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DP_CHANNEL_EQ_BITS ;
 int DP_INTERLANE_ALIGN_DONE ;
 int EINVAL ;
 int analogix_dp_get_lane_status (int*,int) ;

__attribute__((used)) static int analogix_dp_channel_eq_ok(u8 link_status[2], u8 link_align,
         int lane_count)
{
 int lane;
 u8 lane_status;

 if ((link_align & DP_INTERLANE_ALIGN_DONE) == 0)
  return -EINVAL;

 for (lane = 0; lane < lane_count; lane++) {
  lane_status = analogix_dp_get_lane_status(link_status, lane);
  lane_status &= DP_CHANNEL_EQ_BITS;
  if (lane_status != DP_CHANNEL_EQ_BITS)
   return -EINVAL;
 }

 return 0;
}
