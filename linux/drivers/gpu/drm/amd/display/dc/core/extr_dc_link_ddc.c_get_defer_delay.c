
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ddc_service {int transaction_type; int dongle_type; } ;




 int DISPLAY_DONGLE_DP_DVI_CONVERTER ;
 int DISPLAY_DONGLE_DP_HDMI_CONVERTER ;
 int DISPLAY_DONGLE_DP_VGA_CONVERTER ;
 int DP_TRANSLATOR_DELAY ;
 int defer_delay_converter_wa (struct ddc_service*,int ) ;

uint32_t get_defer_delay(struct ddc_service *ddc)
{
 uint32_t defer_delay = 0;

 switch (ddc->transaction_type) {
 case 129:
  if ((DISPLAY_DONGLE_DP_VGA_CONVERTER == ddc->dongle_type) ||
   (DISPLAY_DONGLE_DP_DVI_CONVERTER == ddc->dongle_type) ||
   (DISPLAY_DONGLE_DP_HDMI_CONVERTER ==
    ddc->dongle_type)) {

   defer_delay = DP_TRANSLATOR_DELAY;

   defer_delay =
    defer_delay_converter_wa(ddc, defer_delay);

  } else
   defer_delay = 0;
  break;
 case 128:
  defer_delay = DP_TRANSLATOR_DELAY;
  break;
 default:
  break;
 }
 return defer_delay;
}
