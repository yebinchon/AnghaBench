
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dev; } ;
struct acx565akm_panel {int mutex; } ;


 int acx565akm_bl_update_status_locked (struct backlight_device*) ;
 struct acx565akm_panel* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acx565akm_bl_update_status(struct backlight_device *dev)
{
 struct acx565akm_panel *lcd = dev_get_drvdata(&dev->dev);
 int ret;

 mutex_lock(&lcd->mutex);
 ret = acx565akm_bl_update_status_locked(dev);
 mutex_unlock(&lcd->mutex);

 return ret;
}
