
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stream_encoder {int dummy; } ;
struct TYPE_6__ {TYPE_4__* bp; int id; } ;
struct dcn10_stream_encoder {TYPE_2__ base; } ;
struct TYPE_7__ {scalar_t__ LTE_340MCSC_SCRAMBLE; } ;
struct dc_crtc_timing {int display_color_depth; TYPE_3__ flags; int pixel_encoding; } ;
struct bp_encoder_control {int enable_dp_audio; int pixel_clock; int lanes_number; int signal; int engine_id; int action; int member_0; } ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {scalar_t__ (* encoder_control ) (TYPE_4__*,struct bp_encoder_control*) ;} ;


 int AFMT_AUDIO_INFO_UPDATE ;
 int AFMT_INFOFRAME_CONTROL0 ;
 scalar_t__ BP_RESULT_OK ;




 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int ENCODER_CONTROL_SETUP ;
 int HDMI_AUDIO_INFO_LINE ;
 int HDMI_AUDIO_INFO_SEND ;
 int HDMI_CLOCK_CHANNEL_RATE ;
 int HDMI_CLOCK_CHANNEL_RATE_MORE_340M ;
 int HDMI_CONTROL ;
 int HDMI_DATA_SCRAMBLE_EN ;
 int HDMI_DEEP_COLOR_DEPTH ;
 int HDMI_DEEP_COLOR_ENABLE ;
 int HDMI_GC ;
 int HDMI_GC_AVMUTE ;
 int HDMI_GC_CONT ;
 int HDMI_GC_SEND ;
 int HDMI_INFOFRAME_CONTROL0 ;
 int HDMI_INFOFRAME_CONTROL1 ;
 int HDMI_KEEPOUT_MODE ;
 int HDMI_NO_EXTRA_NULL_PACKET_FILLED ;
 int HDMI_NULL_SEND ;
 int HDMI_PACKET_GEN_VERSION ;
 int HDMI_VBI_PACKET_CONTROL ;
 int LANE_COUNT_FOUR ;
 int PIXEL_ENCODING_YCBCR422 ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int) ;
 int REG_UPDATE_6 (int ,int ,int,int ,int,int ,int ,int ,int ,int ,int,int ,int ) ;
 int SIGNAL_TYPE_HDMI_TYPE_A ;
 int VBI_LINE_0 ;
 int enc1_stream_encoder_set_stream_attribute_helper (struct dcn10_stream_encoder*,struct dc_crtc_timing*) ;
 scalar_t__ stub1 (TYPE_4__*,struct bp_encoder_control*) ;

void enc1_stream_encoder_hdmi_set_stream_attribute(
 struct stream_encoder *enc,
 struct dc_crtc_timing *crtc_timing,
 int actual_pix_clk_khz,
 bool enable_audio)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);
 struct bp_encoder_control cntl = {0};

 cntl.action = ENCODER_CONTROL_SETUP;
 cntl.engine_id = enc1->base.id;
 cntl.signal = SIGNAL_TYPE_HDMI_TYPE_A;
 cntl.enable_dp_audio = enable_audio;
 cntl.pixel_clock = actual_pix_clk_khz;
 cntl.lanes_number = LANE_COUNT_FOUR;

 if (enc1->base.bp->funcs->encoder_control(
   enc1->base.bp, &cntl) != BP_RESULT_OK)
  return;

 enc1_stream_encoder_set_stream_attribute_helper(enc1, crtc_timing);


 REG_UPDATE_6(HDMI_CONTROL,
  HDMI_PACKET_GEN_VERSION, 1,
  HDMI_KEEPOUT_MODE, 1,
  HDMI_DEEP_COLOR_ENABLE, 0,
  HDMI_DATA_SCRAMBLE_EN, 0,
  HDMI_NO_EXTRA_NULL_PACKET_FILLED, 1,
  HDMI_CLOCK_CHANNEL_RATE, 0);


 switch (crtc_timing->display_color_depth) {
 case 128:
  REG_UPDATE(HDMI_CONTROL, HDMI_DEEP_COLOR_DEPTH, 0);
  break;
 case 131:
  if (crtc_timing->pixel_encoding == PIXEL_ENCODING_YCBCR422) {
   REG_UPDATE_2(HDMI_CONTROL,
     HDMI_DEEP_COLOR_DEPTH, 1,
     HDMI_DEEP_COLOR_ENABLE, 0);
  } else {
   REG_UPDATE_2(HDMI_CONTROL,
     HDMI_DEEP_COLOR_DEPTH, 1,
     HDMI_DEEP_COLOR_ENABLE, 1);
   }
  break;
 case 130:
  if (crtc_timing->pixel_encoding == PIXEL_ENCODING_YCBCR422) {
   REG_UPDATE_2(HDMI_CONTROL,
     HDMI_DEEP_COLOR_DEPTH, 2,
     HDMI_DEEP_COLOR_ENABLE, 0);
  } else {
   REG_UPDATE_2(HDMI_CONTROL,
     HDMI_DEEP_COLOR_DEPTH, 2,
     HDMI_DEEP_COLOR_ENABLE, 1);
   }
  break;
 case 129:
  REG_UPDATE_2(HDMI_CONTROL,
    HDMI_DEEP_COLOR_DEPTH, 3,
    HDMI_DEEP_COLOR_ENABLE, 1);
  break;
 default:
  break;
 }

 if (actual_pix_clk_khz >= HDMI_CLOCK_CHANNEL_RATE_MORE_340M) {




  REG_UPDATE_2(HDMI_CONTROL,
   HDMI_DATA_SCRAMBLE_EN, 1,
   HDMI_CLOCK_CHANNEL_RATE, 1);
 } else if (crtc_timing->flags.LTE_340MCSC_SCRAMBLE) {
  REG_UPDATE_2(HDMI_CONTROL,
   HDMI_DATA_SCRAMBLE_EN, 1,
   HDMI_CLOCK_CHANNEL_RATE, 0);
 }


 REG_UPDATE_3(HDMI_VBI_PACKET_CONTROL,
  HDMI_GC_CONT, 1,
  HDMI_GC_SEND, 1,
  HDMI_NULL_SEND, 1);


 REG_UPDATE(HDMI_INFOFRAME_CONTROL0, HDMI_AUDIO_INFO_SEND, 1);

 REG_UPDATE(AFMT_INFOFRAME_CONTROL0, AFMT_AUDIO_INFO_UPDATE, 1);

 REG_UPDATE(HDMI_INFOFRAME_CONTROL1, HDMI_AUDIO_INFO_LINE,
    VBI_LINE_0 + 2);

 REG_UPDATE(HDMI_GC, HDMI_GC_AVMUTE, 0);
}
