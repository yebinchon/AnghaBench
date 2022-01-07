
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *cros_ec_usb_power_type_string(unsigned int type)
{
 switch (type) {
 case 133:
  return "USB_CHG_TYPE_NONE";
 case 131:
  return "USB_CHG_TYPE_PD";
 case 130:
  return "USB_CHG_TYPE_PROPRIETARY";
 case 134:
  return "USB_CHG_TYPE_C";
 case 136:
  return "USB_CHG_TYPE_BC12_DCP";
 case 137:
  return "USB_CHG_TYPE_BC12_CDP";
 case 135:
  return "USB_CHG_TYPE_BC12_SDP";
 case 132:
  return "USB_CHG_TYPE_OTHER";
 case 128:
  return "USB_CHG_TYPE_VBUS";
 case 129:
  return "USB_CHG_TYPE_UNKNOWN";
 default:
  return "USB_CHG_TYPE_UNKNOWN";
 }
}
