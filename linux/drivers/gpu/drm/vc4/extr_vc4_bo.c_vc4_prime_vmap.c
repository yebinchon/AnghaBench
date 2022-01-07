
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_bo {scalar_t__ validated_shader; } ;
struct drm_gem_object {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 void* drm_gem_cma_prime_vmap (struct drm_gem_object*) ;
 struct vc4_bo* to_vc4_bo (struct drm_gem_object*) ;

void *vc4_prime_vmap(struct drm_gem_object *obj)
{
 struct vc4_bo *bo = to_vc4_bo(obj);

 if (bo->validated_shader) {
  DRM_DEBUG("mmaping of shader BOs not allowed.\n");
  return ERR_PTR(-EINVAL);
 }

 return drm_gem_cma_prime_vmap(obj);
}
