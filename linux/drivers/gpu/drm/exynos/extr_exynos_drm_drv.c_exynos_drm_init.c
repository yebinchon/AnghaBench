
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exynos_drm_register_devices () ;
 int exynos_drm_register_drivers () ;
 int exynos_drm_unregister_devices () ;

__attribute__((used)) static int exynos_drm_init(void)
{
 int ret;

 ret = exynos_drm_register_devices();
 if (ret)
  return ret;

 ret = exynos_drm_register_drivers();
 if (ret)
  goto err_unregister_pdevs;

 return 0;

err_unregister_pdevs:
 exynos_drm_unregister_devices();

 return ret;
}
