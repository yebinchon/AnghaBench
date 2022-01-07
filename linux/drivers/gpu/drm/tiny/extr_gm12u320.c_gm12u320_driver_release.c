
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gm12u320_device {int dummy; } ;
struct drm_device {struct gm12u320_device* dev_private; } ;


 int drm_dev_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int gm12u320_usb_free (struct gm12u320_device*) ;
 int kfree (struct gm12u320_device*) ;

__attribute__((used)) static void gm12u320_driver_release(struct drm_device *dev)
{
 struct gm12u320_device *gm12u320 = dev->dev_private;

 gm12u320_usb_free(gm12u320);
 drm_mode_config_cleanup(dev);
 drm_dev_fini(dev);
 kfree(gm12u320);
}
