
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int resv; int _resv; } ;
struct ttm_buffer_object {TYPE_2__ base; } ;
struct dma_resv_list {int shared_count; int * shared; } ;
struct dma_fence {TYPE_1__* ops; } ;
struct TYPE_3__ {int signaled; } ;


 int dma_fence_enable_sw_signaling (struct dma_fence*) ;
 struct dma_fence* dma_resv_get_excl (int *) ;
 struct dma_resv_list* dma_resv_get_list (int *) ;
 int dma_resv_held (int ) ;
 struct dma_fence* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
{
 struct dma_resv_list *fobj;
 struct dma_fence *fence;
 int i;

 fobj = dma_resv_get_list(&bo->base._resv);
 fence = dma_resv_get_excl(&bo->base._resv);
 if (fence && !fence->ops->signaled)
  dma_fence_enable_sw_signaling(fence);

 for (i = 0; fobj && i < fobj->shared_count; ++i) {
  fence = rcu_dereference_protected(fobj->shared[i],
     dma_resv_held(bo->base.resv));

  if (!fence->ops->signaled)
   dma_fence_enable_sw_signaling(fence);
 }
}
