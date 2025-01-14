
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stream_encoder {int dummy; } ;
struct TYPE_5__ {TYPE_3__* bp; int id; } ;
struct dce110_stream_encoder {TYPE_2__ base; } ;
struct dc_crtc_timing {int pix_clk_100hz; scalar_t__ pixel_encoding; } ;
struct bp_encoder_control {int enable_dp_audio; int pixel_clock; int lanes_number; int signal; int engine_id; int action; int member_0; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_4__ {scalar_t__ (* encoder_control ) (TYPE_3__*,struct bp_encoder_control*) ;} ;


 int ASSERT (int) ;
 scalar_t__ BP_RESULT_OK ;
 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int ENCODER_CONTROL_SETUP ;
 int LANE_COUNT_FOUR ;
 scalar_t__ PIXEL_ENCODING_RGB ;
 int SIGNAL_TYPE_LVDS ;
 scalar_t__ stub1 (TYPE_3__*,struct bp_encoder_control*) ;

__attribute__((used)) static void dce110_stream_encoder_lvds_set_stream_attribute(
 struct stream_encoder *enc,
 struct dc_crtc_timing *crtc_timing)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);
 struct bp_encoder_control cntl = {0};

 cntl.action = ENCODER_CONTROL_SETUP;
 cntl.engine_id = enc110->base.id;
 cntl.signal = SIGNAL_TYPE_LVDS;
 cntl.enable_dp_audio = 0;
 cntl.pixel_clock = crtc_timing->pix_clk_100hz / 10;
 cntl.lanes_number = LANE_COUNT_FOUR;

 if (enc110->base.bp->funcs->encoder_control(
   enc110->base.bp, &cntl) != BP_RESULT_OK)
  return;

 ASSERT(crtc_timing->pixel_encoding == PIXEL_ENCODING_RGB);
}
