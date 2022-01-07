
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_gem_cma_object {void* vaddr; } ;


 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

void *drm_gem_cma_prime_vmap(struct drm_gem_object *obj)
{
 struct drm_gem_cma_object *cma_obj = to_drm_gem_cma_obj(obj);

 return cma_obj->vaddr;
}
