
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int dummy; } ;





 int CHT_WC_PWRSRC_USBID_MASK ;
 int CHT_WC_PWRSRC_USBID_SHIFT ;
 int INTEL_USB_ID_FLOAT ;
 int INTEL_USB_ID_GND ;

__attribute__((used)) static int cht_wc_extcon_get_id(struct cht_wc_extcon_data *ext, int pwrsrc_sts)
{
 switch ((pwrsrc_sts & CHT_WC_PWRSRC_USBID_MASK) >> CHT_WC_PWRSRC_USBID_SHIFT) {
 case 128:
  return INTEL_USB_ID_GND;
 case 129:
  return INTEL_USB_ID_FLOAT;
 case 130:
 default:





  return INTEL_USB_ID_FLOAT;
 }
}
