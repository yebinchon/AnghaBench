
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* firstopen ) (struct drm_device*) ;} ;


 int DRIVER_LEGACY ;
 int DRM_DEBUG (char*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_legacy_dma_setup (struct drm_device*) ;
 int stub1 (struct drm_device*) ;

int drm_legacy_setup(struct drm_device * dev)
{
 int ret;

 if (dev->driver->firstopen &&
     drm_core_check_feature(dev, DRIVER_LEGACY)) {
  ret = dev->driver->firstopen(dev);
  if (ret != 0)
   return ret;
 }

 ret = drm_legacy_dma_setup(dev);
 if (ret < 0)
  return ret;


 DRM_DEBUG("\n");
 return 0;
}
