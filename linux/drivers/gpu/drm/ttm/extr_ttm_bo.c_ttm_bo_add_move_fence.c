
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int move_lock; int move; } ;
struct ttm_mem_reg {int dummy; } ;
struct TYPE_2__ {int resv; } ;
struct ttm_buffer_object {struct dma_fence* moving; TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;


 struct dma_fence* dma_fence_get (int ) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_resv_add_shared_fence (int ,struct dma_fence*) ;
 int dma_resv_reserve_shared (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_bo_add_move_fence(struct ttm_buffer_object *bo,
     struct ttm_mem_type_manager *man,
     struct ttm_mem_reg *mem)
{
 struct dma_fence *fence;
 int ret;

 spin_lock(&man->move_lock);
 fence = dma_fence_get(man->move);
 spin_unlock(&man->move_lock);

 if (fence) {
  dma_resv_add_shared_fence(bo->base.resv, fence);

  ret = dma_resv_reserve_shared(bo->base.resv, 1);
  if (unlikely(ret)) {
   dma_fence_put(fence);
   return ret;
  }

  dma_fence_put(bo->moving);
  bo->moving = fence;
 }

 return 0;
}
