
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_driver_info {int flags; TYPE_1__* driver; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int driver; } ;


 int ARRAY_SIZE (struct exynos_drm_driver_info*) ;
 int DRM_VIRTUAL_DEVICE ;
 struct exynos_drm_driver_info* exynos_drm_drivers ;
 int platform_device_unregister (int ) ;
 struct device* platform_find_device_by_driver (int *,int *) ;
 int put_device (struct device*) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static void exynos_drm_unregister_devices(void)
{
 int i;

 for (i = ARRAY_SIZE(exynos_drm_drivers) - 1; i >= 0; --i) {
  struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];
  struct device *dev;

  if (!info->driver || !(info->flags & DRM_VIRTUAL_DEVICE))
   continue;

  while ((dev = platform_find_device_by_driver(((void*)0),
      &info->driver->driver))) {
   put_device(dev);
   platform_device_unregister(to_platform_device(dev));
  }
 }
}
