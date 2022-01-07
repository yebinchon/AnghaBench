
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_driver_info {int flags; TYPE_1__* driver; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;
struct TYPE_2__ {int driver; } ;


 int ARRAY_SIZE (struct exynos_drm_driver_info*) ;
 int DRM_COMPONENT_DRIVER ;
 int DRM_FIMC_DEVICE ;
 int ENODEV ;
 struct component_match* ERR_PTR (int ) ;
 int compare_dev ;
 int component_match_add (struct device*,struct component_match**,int ,struct device*) ;
 scalar_t__ exynos_drm_check_fimc_device (struct device*) ;
 struct exynos_drm_driver_info* exynos_drm_drivers ;
 struct device* platform_find_device_by_driver (struct device*,int *) ;
 int put_device (struct device*) ;

__attribute__((used)) static struct component_match *exynos_drm_match_add(struct device *dev)
{
 struct component_match *match = ((void*)0);
 int i;

 for (i = 0; i < ARRAY_SIZE(exynos_drm_drivers); ++i) {
  struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];
  struct device *p = ((void*)0), *d;

  if (!info->driver || !(info->flags & DRM_COMPONENT_DRIVER))
   continue;

  while ((d = platform_find_device_by_driver(p, &info->driver->driver))) {
   put_device(p);

   if (!(info->flags & DRM_FIMC_DEVICE) ||
       exynos_drm_check_fimc_device(d) == 0)
    component_match_add(dev, &match,
          compare_dev, d);
   p = d;
  }
  put_device(p);
 }

 return match ?: ERR_PTR(-ENODEV);
}
