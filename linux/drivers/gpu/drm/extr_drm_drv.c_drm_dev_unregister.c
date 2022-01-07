
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int registered; scalar_t__ agp; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* unload ) (struct drm_device*) ;} ;


 int DRIVER_LEGACY ;
 int DRIVER_MODESET ;
 int DRM_MINOR_PRIMARY ;
 int DRM_MINOR_RENDER ;
 int drm_client_dev_unregister (struct drm_device*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_lastclose (struct drm_device*) ;
 int drm_legacy_rmmaps (struct drm_device*) ;
 int drm_minor_unregister (struct drm_device*,int ) ;
 int drm_modeset_unregister_all (struct drm_device*) ;
 int drm_pci_agp_destroy (struct drm_device*) ;
 int remove_compat_control_link (struct drm_device*) ;
 int stub1 (struct drm_device*) ;

void drm_dev_unregister(struct drm_device *dev)
{
 if (drm_core_check_feature(dev, DRIVER_LEGACY))
  drm_lastclose(dev);

 dev->registered = 0;

 drm_client_dev_unregister(dev);

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  drm_modeset_unregister_all(dev);

 if (dev->driver->unload)
  dev->driver->unload(dev);

 if (dev->agp)
  drm_pci_agp_destroy(dev);

 drm_legacy_rmmaps(dev);

 remove_compat_control_link(dev);
 drm_minor_unregister(dev, DRM_MINOR_PRIMARY);
 drm_minor_unregister(dev, DRM_MINOR_RENDER);
}
