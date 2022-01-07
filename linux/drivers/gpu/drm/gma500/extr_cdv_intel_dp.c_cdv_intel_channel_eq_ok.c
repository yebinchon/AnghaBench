
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct cdv_intel_dp {int lane_count; int link_status; } ;


 int CHANNEL_EQ_BITS ;
 int DP_INTERLANE_ALIGN_DONE ;
 int DP_LANE_ALIGN_STATUS_UPDATED ;
 int cdv_intel_dp_link_status (int ,int ) ;
 int cdv_intel_get_lane_status (int ,int) ;

__attribute__((used)) static bool
cdv_intel_channel_eq_ok(struct gma_encoder *encoder)
{
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 uint8_t lane_align;
 uint8_t lane_status;
 int lane;

 lane_align = cdv_intel_dp_link_status(intel_dp->link_status,
       DP_LANE_ALIGN_STATUS_UPDATED);
 if ((lane_align & DP_INTERLANE_ALIGN_DONE) == 0)
  return 0;
 for (lane = 0; lane < intel_dp->lane_count; lane++) {
  lane_status = cdv_intel_get_lane_status(intel_dp->link_status, lane);
  if ((lane_status & CHANNEL_EQ_BITS) != CHANNEL_EQ_BITS)
   return 0;
 }
 return 1;
}
