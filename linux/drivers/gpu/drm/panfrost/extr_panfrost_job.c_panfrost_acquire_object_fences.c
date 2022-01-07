
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int resv; } ;
struct dma_fence {int dummy; } ;


 struct dma_fence* dma_resv_get_excl_rcu (int ) ;

__attribute__((used)) static void panfrost_acquire_object_fences(struct drm_gem_object **bos,
        int bo_count,
        struct dma_fence **implicit_fences)
{
 int i;

 for (i = 0; i < bo_count; i++)
  implicit_fences[i] = dma_resv_get_excl_rcu(bos[i]->resv);
}
