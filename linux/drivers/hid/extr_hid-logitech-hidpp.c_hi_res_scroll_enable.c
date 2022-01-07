
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int wheel_multiplier; } ;
struct hidpp_device {int quirks; int hid_dev; TYPE_1__ vertical_wheel_counter; } ;


 int HIDPP_QUIRK_HI_RES_SCROLL_X2120 ;
 int HIDPP_QUIRK_HI_RES_SCROLL_X2121 ;
 int hid_info (int ,char*,int) ;
 int hidpp10_enable_scrolling_acceleration (struct hidpp_device*) ;
 int hidpp_hrs_set_highres_scrolling_mode (struct hidpp_device*,int,int*) ;
 int hidpp_hrw_get_wheel_capability (struct hidpp_device*,int*) ;
 int hidpp_hrw_set_wheel_mode (struct hidpp_device*,int,int,int) ;

__attribute__((used)) static int hi_res_scroll_enable(struct hidpp_device *hidpp)
{
 int ret;
 u8 multiplier = 1;

 if (hidpp->quirks & HIDPP_QUIRK_HI_RES_SCROLL_X2121) {
  ret = hidpp_hrw_set_wheel_mode(hidpp, 0, 1, 0);
  if (ret == 0)
   ret = hidpp_hrw_get_wheel_capability(hidpp, &multiplier);
 } else if (hidpp->quirks & HIDPP_QUIRK_HI_RES_SCROLL_X2120) {
  ret = hidpp_hrs_set_highres_scrolling_mode(hidpp, 1,
          &multiplier);
 } else {
  ret = hidpp10_enable_scrolling_acceleration(hidpp);
  multiplier = 8;
 }
 if (ret)
  return ret;

 if (multiplier == 0)
  multiplier = 1;

 hidpp->vertical_wheel_counter.wheel_multiplier = multiplier;
 hid_info(hidpp->hid_dev, "multiplier = %d\n", multiplier);
 return 0;
}
