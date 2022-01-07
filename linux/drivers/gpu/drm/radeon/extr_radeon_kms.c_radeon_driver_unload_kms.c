
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int * rmmio; } ;
struct drm_device {struct radeon_device* dev_private; int dev; } ;


 int kfree (struct radeon_device*) ;
 int pm_runtime_forbid (int ) ;
 int pm_runtime_get_sync (int ) ;
 int radeon_acpi_fini (struct radeon_device*) ;
 int radeon_device_fini (struct radeon_device*) ;
 scalar_t__ radeon_is_px (struct drm_device*) ;
 int radeon_modeset_fini (struct radeon_device*) ;

void radeon_driver_unload_kms(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;

 if (rdev == ((void*)0))
  return;

 if (rdev->rmmio == ((void*)0))
  goto done_free;

 if (radeon_is_px(dev)) {
  pm_runtime_get_sync(dev->dev);
  pm_runtime_forbid(dev->dev);
 }

 radeon_acpi_fini(rdev);

 radeon_modeset_fini(rdev);
 radeon_device_fini(rdev);

done_free:
 kfree(rdev);
 dev->dev_private = ((void*)0);
}
