
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* virtual; } ;
struct TYPE_3__ {int num_pages; } ;
struct radeon_bo {TYPE_2__ dma_buf_vmap; TYPE_1__ tbo; } ;
struct drm_gem_object {int dummy; } ;


 void* ERR_PTR (int) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int ttm_bo_kmap (TYPE_1__*,int ,int ,TYPE_2__*) ;

void *radeon_gem_prime_vmap(struct drm_gem_object *obj)
{
 struct radeon_bo *bo = gem_to_radeon_bo(obj);
 int ret;

 ret = ttm_bo_kmap(&bo->tbo, 0, bo->tbo.num_pages,
     &bo->dma_buf_vmap);
 if (ret)
  return ERR_PTR(ret);

 return bo->dma_buf_vmap.virtual;
}
