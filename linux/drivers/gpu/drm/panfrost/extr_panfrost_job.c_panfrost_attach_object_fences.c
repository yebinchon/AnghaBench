
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int resv; } ;
struct dma_fence {int dummy; } ;


 int dma_resv_add_excl_fence (int ,struct dma_fence*) ;

__attribute__((used)) static void panfrost_attach_object_fences(struct drm_gem_object **bos,
       int bo_count,
       struct dma_fence *fence)
{
 int i;

 for (i = 0; i < bo_count; i++)
  dma_resv_add_excl_fence(bos[i]->resv, fence);
}
