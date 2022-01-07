
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {TYPE_1__* se_mask; } ;
struct TYPE_2__ {scalar_t__ HDMI_DATA_SCRAMBLE_EN; } ;


 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int HDMI_CLOCK_CHANNEL_RATE ;
 int HDMI_CONTROL ;
 int HDMI_DATA_SCRAMBLE_EN ;
 int HDMI_DEEP_COLOR_ENABLE ;
 int HDMI_KEEPOUT_MODE ;
 int HDMI_PACKET_GEN_VERSION ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int ) ;
 int REG_UPDATE_5 (int ,int ,int,int ,int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dce110_reset_hdmi_stream_attribute(
 struct stream_encoder *enc)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);
 if (enc110->se_mask->HDMI_DATA_SCRAMBLE_EN)
  REG_UPDATE_5(HDMI_CONTROL,
   HDMI_PACKET_GEN_VERSION, 1,
   HDMI_KEEPOUT_MODE, 1,
   HDMI_DEEP_COLOR_ENABLE, 0,
   HDMI_DATA_SCRAMBLE_EN, 0,
   HDMI_CLOCK_CHANNEL_RATE, 0);
 else
  REG_UPDATE_3(HDMI_CONTROL,
   HDMI_PACKET_GEN_VERSION, 1,
   HDMI_KEEPOUT_MODE, 1,
   HDMI_DEEP_COLOR_ENABLE, 0);
}
