
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_operation_ctx {int interruptible; int no_wait_gpu; int flags; } ;
struct ttm_mem_type_manager {int move_lock; int move; int * lru; } ;
struct ttm_bo_global {int lru_lock; } ;
struct ttm_bo_device {struct ttm_bo_global* glob; struct ttm_mem_type_manager* man; } ;
struct dma_fence {int dummy; } ;


 unsigned int TTM_MAX_BO_PRIORITY ;
 int TTM_OPT_FLAG_FORCE_ALLOC ;
 struct dma_fence* dma_fence_get (int ) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_mem_evict_first (struct ttm_bo_device*,unsigned int,int *,struct ttm_operation_ctx*,int *) ;

__attribute__((used)) static int ttm_bo_force_list_clean(struct ttm_bo_device *bdev,
       unsigned mem_type)
{
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0,
  .flags = TTM_OPT_FLAG_FORCE_ALLOC
 };
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];
 struct ttm_bo_global *glob = bdev->glob;
 struct dma_fence *fence;
 int ret;
 unsigned i;





 spin_lock(&glob->lru_lock);
 for (i = 0; i < TTM_MAX_BO_PRIORITY; ++i) {
  while (!list_empty(&man->lru[i])) {
   spin_unlock(&glob->lru_lock);
   ret = ttm_mem_evict_first(bdev, mem_type, ((void*)0), &ctx,
        ((void*)0));
   if (ret)
    return ret;
   spin_lock(&glob->lru_lock);
  }
 }
 spin_unlock(&glob->lru_lock);

 spin_lock(&man->move_lock);
 fence = dma_fence_get(man->move);
 spin_unlock(&man->move_lock);

 if (fence) {
  ret = dma_fence_wait(fence, 0);
  dma_fence_put(fence);
  if (ret)
   return ret;
 }

 return 0;
}
