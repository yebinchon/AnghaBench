
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 int exynos_drm_gem_destroy (int ) ;
 int to_exynos_gem (struct drm_gem_object*) ;

void exynos_drm_gem_free_object(struct drm_gem_object *obj)
{
 exynos_drm_gem_destroy(to_exynos_gem(obj));
}
