
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_info_packet {int hb0; int hb1; int hb2; int hb3; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 void* DC_HDMI_INFOFRAME_TYPE_SPD ;
 scalar_t__ dc_is_dp_signal (int) ;
 scalar_t__ dc_is_hdmi_signal (int) ;

__attribute__((used)) static void build_vrr_infopacket_header_v2(enum signal_type signal,
  struct dc_info_packet *infopacket,
  unsigned int *payload_size)
{
 if (dc_is_hdmi_signal(signal)) {






  infopacket->hb0 = DC_HDMI_INFOFRAME_TYPE_SPD;


  infopacket->hb1 = 0x02;


  infopacket->hb2 = 0x09;

  *payload_size = 0x0A;

 } else if (dc_is_dp_signal(signal)) {






  infopacket->hb0 = 0x00;




  infopacket->hb1 = DC_HDMI_INFOFRAME_TYPE_SPD;




  infopacket->hb2 = 0x1B;




  infopacket->hb3 = 0x08;

  *payload_size = 0x1B;
 }
}
