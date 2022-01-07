
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_placement {int dummy; } ;
struct ttm_operation_ctx {int dummy; } ;
struct TYPE_4__ {scalar_t__ mem_type; int placement; } ;
struct TYPE_3__ {int resv; } ;
struct ttm_buffer_object {int * ttm; TYPE_2__ mem; TYPE_1__ base; } ;


 int TTM_PL_MASK_MEMTYPE ;
 scalar_t__ TTM_PL_SYSTEM ;
 int dma_resv_assert_held (int ) ;
 int ttm_bo_mem_compat (struct ttm_placement*,TYPE_2__*,int *) ;
 int ttm_bo_move_buffer (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_operation_ctx*) ;
 int ttm_flag_masked (int *,int ,int ) ;
 int ttm_tt_create (struct ttm_buffer_object*,int) ;

int ttm_bo_validate(struct ttm_buffer_object *bo,
      struct ttm_placement *placement,
      struct ttm_operation_ctx *ctx)
{
 int ret;
 uint32_t new_flags;

 dma_resv_assert_held(bo->base.resv);



 if (!ttm_bo_mem_compat(placement, &bo->mem, &new_flags)) {
  ret = ttm_bo_move_buffer(bo, placement, ctx);
  if (ret)
   return ret;
 } else {




  ttm_flag_masked(&bo->mem.placement, new_flags,
    ~TTM_PL_MASK_MEMTYPE);
 }



 if (bo->mem.mem_type == TTM_PL_SYSTEM && bo->ttm == ((void*)0)) {
  ret = ttm_tt_create(bo, 1);
  if (ret)
   return ret;
 }
 return 0;
}
