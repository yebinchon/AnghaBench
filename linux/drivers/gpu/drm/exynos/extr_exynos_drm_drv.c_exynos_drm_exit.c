
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exynos_drm_unregister_devices () ;
 int exynos_drm_unregister_drivers () ;

__attribute__((used)) static void exynos_drm_exit(void)
{
 exynos_drm_unregister_drivers();
 exynos_drm_unregister_devices();
}
