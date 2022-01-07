
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int flags; } ;
struct ttm_mem_reg {size_t mem_type; int * mm_node; } ;
struct TYPE_2__ {int resv; } ;
struct ttm_buffer_object {int * ttm; TYPE_1__ base; int moving; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct dma_fence {int dummy; } ;


 int TTM_MEMTYPE_FLAG_FIXED ;
 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (int ) ;
 int dma_resv_add_excl_fence (int ,struct dma_fence*) ;
 int ttm_bo_free_old_node (struct ttm_buffer_object*) ;
 int ttm_bo_put (struct ttm_buffer_object*) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int) ;
 int ttm_buffer_object_transfer (struct ttm_buffer_object*,struct ttm_buffer_object**) ;
 int ttm_tt_destroy (int *) ;

int ttm_bo_move_accel_cleanup(struct ttm_buffer_object *bo,
         struct dma_fence *fence,
         bool evict,
         struct ttm_mem_reg *new_mem)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man = &bdev->man[new_mem->mem_type];
 struct ttm_mem_reg *old_mem = &bo->mem;
 int ret;
 struct ttm_buffer_object *ghost_obj;

 dma_resv_add_excl_fence(bo->base.resv, fence);
 if (evict) {
  ret = ttm_bo_wait(bo, 0, 0);
  if (ret)
   return ret;

  if (man->flags & TTM_MEMTYPE_FLAG_FIXED) {
   ttm_tt_destroy(bo->ttm);
   bo->ttm = ((void*)0);
  }
  ttm_bo_free_old_node(bo);
 } else {
  dma_fence_put(bo->moving);
  bo->moving = dma_fence_get(fence);

  ret = ttm_buffer_object_transfer(bo, &ghost_obj);
  if (ret)
   return ret;

  dma_resv_add_excl_fence(ghost_obj->base.resv, fence);







  if (!(man->flags & TTM_MEMTYPE_FLAG_FIXED))
   ghost_obj->ttm = ((void*)0);
  else
   bo->ttm = ((void*)0);

  ttm_bo_unreserve(ghost_obj);
  ttm_bo_put(ghost_obj);
 }

 *old_mem = *new_mem;
 new_mem->mm_node = ((void*)0);

 return 0;
}
