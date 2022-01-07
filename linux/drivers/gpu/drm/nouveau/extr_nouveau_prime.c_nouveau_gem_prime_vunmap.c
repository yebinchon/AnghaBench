
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int dma_buf_vmap; } ;
struct drm_gem_object {int dummy; } ;


 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;
 int ttm_bo_kunmap (int *) ;

void nouveau_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 struct nouveau_bo *nvbo = nouveau_gem_object(obj);

 ttm_bo_kunmap(&nvbo->dma_buf_vmap);
}
