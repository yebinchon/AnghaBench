
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fb_blank; scalar_t__ power; } ;
struct backlight_device {TYPE_1__ props; int dev; } ;
struct acx565akm_panel {int mutex; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 unsigned int acx565akm_get_actual_brightness (struct acx565akm_panel*) ;
 struct acx565akm_panel* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acx565akm_bl_get_intensity(struct backlight_device *dev)
{
 struct acx565akm_panel *lcd = dev_get_drvdata(&dev->dev);
 unsigned int intensity;

 mutex_lock(&lcd->mutex);

 if (dev->props.fb_blank == FB_BLANK_UNBLANK &&
     dev->props.power == FB_BLANK_UNBLANK)
  intensity = acx565akm_get_actual_brightness(lcd);
 else
  intensity = 0;

 mutex_unlock(&lcd->mutex);

 return intensity;
}
