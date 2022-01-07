
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_device {int dummy; } ;
struct drm_device {struct mga_device* dev_private; } ;


 int drm_mode_config_cleanup (struct drm_device*) ;
 int mgag200_mm_fini (struct mga_device*) ;
 int mgag200_modeset_fini (struct mga_device*) ;

void mgag200_driver_unload(struct drm_device *dev)
{
 struct mga_device *mdev = dev->dev_private;

 if (mdev == ((void*)0))
  return;
 mgag200_modeset_fini(mdev);
 drm_mode_config_cleanup(dev);
 mgag200_mm_fini(mdev);
 dev->dev_private = ((void*)0);
}
