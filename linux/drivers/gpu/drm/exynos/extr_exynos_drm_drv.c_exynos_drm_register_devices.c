
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct exynos_drm_driver_info {int flags; TYPE_2__* driver; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int ARRAY_SIZE (struct exynos_drm_driver_info*) ;
 int DRM_VIRTUAL_DEVICE ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 struct exynos_drm_driver_info* exynos_drm_drivers ;
 int exynos_drm_unregister_devices () ;
 struct platform_device* platform_device_register_simple (int ,int,int *,int ) ;

__attribute__((used)) static int exynos_drm_register_devices(void)
{
 struct platform_device *pdev;
 int i;

 for (i = 0; i < ARRAY_SIZE(exynos_drm_drivers); ++i) {
  struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];

  if (!info->driver || !(info->flags & DRM_VIRTUAL_DEVICE))
   continue;

  pdev = platform_device_register_simple(
     info->driver->driver.name, -1, ((void*)0), 0);
  if (IS_ERR(pdev))
   goto fail;
 }

 return 0;
fail:
 exynos_drm_unregister_devices();
 return PTR_ERR(pdev);
}
