
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;


 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,unsigned int) ;
 struct exynos_drm_gem* to_exynos_gem (struct drm_gem_object*) ;

struct exynos_drm_gem *exynos_drm_gem_get(struct drm_file *filp,
       unsigned int gem_handle)
{
 struct drm_gem_object *obj;

 obj = drm_gem_object_lookup(filp, gem_handle);
 if (!obj)
  return ((void*)0);
 return to_exynos_gem(obj);
}
