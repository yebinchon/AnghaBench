
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* lastclose ) (struct drm_device*) ;} ;


 int DRIVER_LEGACY ;
 int DRM_DEBUG (char*) ;
 int drm_client_dev_restore (struct drm_device*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_legacy_dev_reinit (struct drm_device*) ;
 int stub1 (struct drm_device*) ;

void drm_lastclose(struct drm_device * dev)
{
 DRM_DEBUG("\n");

 if (dev->driver->lastclose)
  dev->driver->lastclose(dev);
 DRM_DEBUG("driver lastclose completed\n");

 if (drm_core_check_feature(dev, DRIVER_LEGACY))
  drm_legacy_dev_reinit(dev);

 drm_client_dev_restore(dev);
}
