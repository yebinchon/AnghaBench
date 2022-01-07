
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_driver_info {int driver; } ;


 int ARRAY_SIZE (struct exynos_drm_driver_info*) ;
 struct exynos_drm_driver_info* exynos_drm_drivers ;
 int platform_driver_unregister (int ) ;

__attribute__((used)) static void exynos_drm_unregister_drivers(void)
{
 int i;

 for (i = ARRAY_SIZE(exynos_drm_drivers) - 1; i >= 0; --i) {
  struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];

  if (!info->driver)
   continue;

  platform_driver_unregister(info->driver);
 }
}
