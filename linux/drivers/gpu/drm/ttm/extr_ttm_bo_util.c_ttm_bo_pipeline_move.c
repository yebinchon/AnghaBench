
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int flags; int move_lock; void* move; } ;
struct ttm_mem_reg {size_t mem_type; int * mm_node; } ;
struct TYPE_2__ {int resv; } ;
struct ttm_buffer_object {int * ttm; void* moving; TYPE_1__ base; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct dma_fence {int dummy; } ;


 int TTM_MEMTYPE_FLAG_FIXED ;
 void* dma_fence_get (struct dma_fence*) ;
 scalar_t__ dma_fence_is_later (struct dma_fence*,void*) ;
 int dma_fence_put (void*) ;
 int dma_resv_add_excl_fence (int ,struct dma_fence*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_free_old_node (struct ttm_buffer_object*) ;
 int ttm_bo_put (struct ttm_buffer_object*) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int) ;
 int ttm_buffer_object_transfer (struct ttm_buffer_object*,struct ttm_buffer_object**) ;
 int ttm_tt_destroy (int *) ;

int ttm_bo_pipeline_move(struct ttm_buffer_object *bo,
    struct dma_fence *fence, bool evict,
    struct ttm_mem_reg *new_mem)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_reg *old_mem = &bo->mem;

 struct ttm_mem_type_manager *from = &bdev->man[old_mem->mem_type];
 struct ttm_mem_type_manager *to = &bdev->man[new_mem->mem_type];

 int ret;

 dma_resv_add_excl_fence(bo->base.resv, fence);

 if (!evict) {
  struct ttm_buffer_object *ghost_obj;
  dma_fence_put(bo->moving);
  bo->moving = dma_fence_get(fence);

  ret = ttm_buffer_object_transfer(bo, &ghost_obj);
  if (ret)
   return ret;

  dma_resv_add_excl_fence(ghost_obj->base.resv, fence);







  if (!(to->flags & TTM_MEMTYPE_FLAG_FIXED))
   ghost_obj->ttm = ((void*)0);
  else
   bo->ttm = ((void*)0);

  ttm_bo_unreserve(ghost_obj);
  ttm_bo_put(ghost_obj);

 } else if (from->flags & TTM_MEMTYPE_FLAG_FIXED) {






  spin_lock(&from->move_lock);
  if (!from->move || dma_fence_is_later(fence, from->move)) {
   dma_fence_put(from->move);
   from->move = dma_fence_get(fence);
  }
  spin_unlock(&from->move_lock);

  ttm_bo_free_old_node(bo);

  dma_fence_put(bo->moving);
  bo->moving = dma_fence_get(fence);

 } else {






  ret = ttm_bo_wait(bo, 0, 0);
  if (ret)
   return ret;

  if (to->flags & TTM_MEMTYPE_FLAG_FIXED) {
   ttm_tt_destroy(bo->ttm);
   bo->ttm = ((void*)0);
  }
  ttm_bo_free_old_node(bo);
 }

 *old_mem = *new_mem;
 new_mem->mm_node = ((void*)0);

 return 0;
}
