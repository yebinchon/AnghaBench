
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static char *intel_dsm_port_name(u8 id)
{
 switch (id) {
 case 0:
  return "Reserved";
 case 1:
  return "Analog VGA";
 case 2:
  return "LVDS";
 case 3:
  return "Reserved";
 case 4:
  return "HDMI/DVI_B";
 case 5:
  return "HDMI/DVI_C";
 case 6:
  return "HDMI/DVI_D";
 case 7:
  return "DisplayPort_A";
 case 8:
  return "DisplayPort_B";
 case 9:
  return "DisplayPort_C";
 case 0xa:
  return "DisplayPort_D";
 case 0xb:
 case 0xc:
 case 0xd:
  return "Reserved";
 case 0xe:
  return "WiDi";
 default:
  return "bad type";
 }
}
