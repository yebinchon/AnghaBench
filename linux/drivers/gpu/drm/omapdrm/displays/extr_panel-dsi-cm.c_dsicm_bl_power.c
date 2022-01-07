
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panel_drv_data {struct backlight_device* extbldev; struct backlight_device* bldev; } ;
struct TYPE_2__ {int state; void* power; void* fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 void* FB_BLANK_NORMAL ;
 void* FB_BLANK_POWERDOWN ;
 void* FB_BLANK_UNBLANK ;
 int backlight_update_status (struct backlight_device*) ;

__attribute__((used)) static void dsicm_bl_power(struct panel_drv_data *ddata, bool enable)
{
 struct backlight_device *backlight;

 if (ddata->bldev)
  backlight = ddata->bldev;
 else if (ddata->extbldev)
  backlight = ddata->extbldev;
 else
  return;

 if (enable) {
  backlight->props.fb_blank = FB_BLANK_UNBLANK;
  backlight->props.state = ~(BL_CORE_FBBLANK | BL_CORE_SUSPENDED);
  backlight->props.power = FB_BLANK_UNBLANK;
 } else {
  backlight->props.fb_blank = FB_BLANK_NORMAL;
  backlight->props.power = FB_BLANK_POWERDOWN;
  backlight->props.state |= BL_CORE_FBBLANK | BL_CORE_SUSPENDED;
 }

 backlight_update_status(backlight);
}
