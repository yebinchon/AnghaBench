
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int HDMI_CLOCK_CHANNEL_RATE ;
 int HDMI_CONTROL ;
 int HDMI_DATA_SCRAMBLE_EN ;
 int HDMI_DEEP_COLOR_ENABLE ;
 int HDMI_KEEPOUT_MODE ;
 int HDMI_PACKET_GEN_VERSION ;
 int REG_UPDATE_5 (int ,int ,int,int ,int,int ,int ,int ,int ,int ,int ) ;

void enc1_reset_hdmi_stream_attribute(
 struct stream_encoder *enc)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);

 REG_UPDATE_5(HDMI_CONTROL,
  HDMI_PACKET_GEN_VERSION, 1,
  HDMI_KEEPOUT_MODE, 1,
  HDMI_DEEP_COLOR_ENABLE, 0,
  HDMI_DATA_SCRAMBLE_EN, 0,
  HDMI_CLOCK_CHANNEL_RATE, 0);
}
