
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_placement {int dummy; } ;
struct ttm_operation_ctx {int dummy; } ;
struct TYPE_6__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct ttm_mem_reg {int num_pages; int size; scalar_t__ mm_node; TYPE_3__ bus; int page_alignment; } ;
struct TYPE_5__ {int page_alignment; } ;
struct TYPE_4__ {int resv; } ;
struct ttm_buffer_object {int num_pages; TYPE_2__ mem; TYPE_1__ base; } ;


 int PAGE_SHIFT ;
 int dma_resv_assert_held (int ) ;
 int ttm_bo_handle_move_mem (struct ttm_buffer_object*,struct ttm_mem_reg*,int,struct ttm_operation_ctx*) ;
 int ttm_bo_mem_put (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_mem_space (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,struct ttm_operation_ctx*) ;

__attribute__((used)) static int ttm_bo_move_buffer(struct ttm_buffer_object *bo,
         struct ttm_placement *placement,
         struct ttm_operation_ctx *ctx)
{
 int ret = 0;
 struct ttm_mem_reg mem;

 dma_resv_assert_held(bo->base.resv);

 mem.num_pages = bo->num_pages;
 mem.size = mem.num_pages << PAGE_SHIFT;
 mem.page_alignment = bo->mem.page_alignment;
 mem.bus.io_reserved_vm = 0;
 mem.bus.io_reserved_count = 0;



 ret = ttm_bo_mem_space(bo, placement, &mem, ctx);
 if (ret)
  goto out_unlock;
 ret = ttm_bo_handle_move_mem(bo, &mem, 0, ctx);
out_unlock:
 if (ret && mem.mm_node)
  ttm_bo_mem_put(bo, &mem);
 return ret;
}
