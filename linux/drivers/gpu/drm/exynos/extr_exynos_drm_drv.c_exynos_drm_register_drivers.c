
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_driver_info {int driver; } ;


 int ARRAY_SIZE (struct exynos_drm_driver_info*) ;
 struct exynos_drm_driver_info* exynos_drm_drivers ;
 int exynos_drm_unregister_drivers () ;
 int platform_driver_register (int ) ;

__attribute__((used)) static int exynos_drm_register_drivers(void)
{
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(exynos_drm_drivers); ++i) {
  struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];

  if (!info->driver)
   continue;

  ret = platform_driver_register(info->driver);
  if (ret)
   goto fail;
 }
 return 0;
fail:
 exynos_drm_unregister_drivers();
 return ret;
}
