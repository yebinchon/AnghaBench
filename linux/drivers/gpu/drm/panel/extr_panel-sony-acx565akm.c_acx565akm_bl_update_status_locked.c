
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fb_blank; scalar_t__ power; int brightness; } ;
struct backlight_device {TYPE_1__ props; int dev; } ;
struct acx565akm_panel {int dummy; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 int acx565akm_set_brightness (struct acx565akm_panel*,int) ;
 struct acx565akm_panel* dev_get_drvdata (int *) ;

__attribute__((used)) static int acx565akm_bl_update_status_locked(struct backlight_device *dev)
{
 struct acx565akm_panel *lcd = dev_get_drvdata(&dev->dev);
 int level;

 if (dev->props.fb_blank == FB_BLANK_UNBLANK &&
     dev->props.power == FB_BLANK_UNBLANK)
  level = dev->props.brightness;
 else
  level = 0;

 acx565akm_set_brightness(lcd, level);

 return 0;
}
