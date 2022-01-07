
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct amdgpu_bo {int dma_buf_vmap; } ;


 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 int ttm_bo_kunmap (int *) ;

void amdgpu_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 struct amdgpu_bo *bo = gem_to_amdgpu_bo(obj);

 ttm_bo_kunmap(&bo->dma_buf_vmap);
}
