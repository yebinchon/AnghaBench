
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;


 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int HDMI_GENERIC0_CONT ;
 int HDMI_GENERIC0_LINE ;
 int HDMI_GENERIC0_SEND ;
 int HDMI_GENERIC1_CONT ;
 int HDMI_GENERIC1_LINE ;
 int HDMI_GENERIC1_SEND ;
 int HDMI_GENERIC_PACKET_CONTROL0 ;
 int HDMI_GENERIC_PACKET_CONTROL1 ;
 int HDMI_GENERIC_PACKET_CONTROL2 ;
 int HDMI_GENERIC_PACKET_CONTROL3 ;
 scalar_t__ REG (int ) ;
 int REG_SET_6 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dce110_stream_encoder_stop_hdmi_info_packets(
 struct stream_encoder *enc)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);


 REG_SET_6(HDMI_GENERIC_PACKET_CONTROL0, 0,
  HDMI_GENERIC1_CONT, 0,
  HDMI_GENERIC1_LINE, 0,
  HDMI_GENERIC1_SEND, 0,
  HDMI_GENERIC0_CONT, 0,
  HDMI_GENERIC0_LINE, 0,
  HDMI_GENERIC0_SEND, 0);


 REG_SET_6(HDMI_GENERIC_PACKET_CONTROL1, 0,
  HDMI_GENERIC0_CONT, 0,
  HDMI_GENERIC0_LINE, 0,
  HDMI_GENERIC0_SEND, 0,
  HDMI_GENERIC1_CONT, 0,
  HDMI_GENERIC1_LINE, 0,
  HDMI_GENERIC1_SEND, 0);
}
