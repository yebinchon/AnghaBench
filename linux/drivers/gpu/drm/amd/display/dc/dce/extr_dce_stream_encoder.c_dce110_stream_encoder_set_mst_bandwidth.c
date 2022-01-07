
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct fixed31_32 {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;


 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_MSE_RATE_CNTL ;
 int DP_MSE_RATE_UPDATE ;
 int DP_MSE_RATE_UPDATE_PENDING ;
 int DP_MSE_RATE_X ;
 int DP_MSE_RATE_Y ;
 int DP_MST_UPDATE_MAX_RETRY ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_WAIT (int ,int ,int ,int,int ) ;
 int dc_fixpt_ceil (int ) ;
 int dc_fixpt_floor (struct fixed31_32) ;
 int dc_fixpt_shl (int ,int) ;
 int dc_fixpt_sub_int (struct fixed31_32,int ) ;

__attribute__((used)) static void dce110_stream_encoder_set_mst_bandwidth(
 struct stream_encoder *enc,
 struct fixed31_32 avg_time_slots_per_mtp)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);
 uint32_t x = dc_fixpt_floor(
  avg_time_slots_per_mtp);
 uint32_t y = dc_fixpt_ceil(
  dc_fixpt_shl(
   dc_fixpt_sub_int(
    avg_time_slots_per_mtp,
    x),
   26));

 {
  REG_SET_2(DP_MSE_RATE_CNTL, 0,
   DP_MSE_RATE_X, x,
   DP_MSE_RATE_Y, y);
 }




 REG_WAIT(DP_MSE_RATE_UPDATE, DP_MSE_RATE_UPDATE_PENDING,
   0,
   10, DP_MST_UPDATE_MAX_RETRY);
}
