
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct ttm_place {int dummy; } ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_type_manager {TYPE_2__* func; } ;
struct ttm_mem_reg {size_t mem_type; scalar_t__ mm_node; } ;
struct TYPE_3__ {int resv; } ;
struct ttm_buffer_object {TYPE_1__ base; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {int (* get_node ) (struct ttm_mem_type_manager*,struct ttm_buffer_object*,struct ttm_place const*,struct ttm_mem_reg*) ;} ;


 struct ww_acquire_ctx* dma_resv_locking_ctx (int ) ;
 int stub1 (struct ttm_mem_type_manager*,struct ttm_buffer_object*,struct ttm_place const*,struct ttm_mem_reg*) ;
 int ttm_bo_add_move_fence (struct ttm_buffer_object*,struct ttm_mem_type_manager*,struct ttm_mem_reg*) ;
 int ttm_mem_evict_first (struct ttm_bo_device*,size_t,struct ttm_place const*,struct ttm_operation_ctx*,struct ww_acquire_ctx*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_bo_mem_force_space(struct ttm_buffer_object *bo,
      const struct ttm_place *place,
      struct ttm_mem_reg *mem,
      struct ttm_operation_ctx *ctx)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man = &bdev->man[mem->mem_type];
 struct ww_acquire_ctx *ticket;
 int ret;

 ticket = dma_resv_locking_ctx(bo->base.resv);
 do {
  ret = (*man->func->get_node)(man, bo, place, mem);
  if (unlikely(ret != 0))
   return ret;
  if (mem->mm_node)
   break;
  ret = ttm_mem_evict_first(bdev, mem->mem_type, place, ctx,
       ticket);
  if (unlikely(ret != 0))
   return ret;
 } while (1);

 return ttm_bo_add_move_fence(bo, man, mem);
}
