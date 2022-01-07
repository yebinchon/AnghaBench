
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {int base; } ;


 int drm_gem_object_put_unlocked (int *) ;

__attribute__((used)) static inline void exynos_drm_gem_put(struct exynos_drm_gem *exynos_gem)
{
 drm_gem_object_put_unlocked(&exynos_gem->base);
}
