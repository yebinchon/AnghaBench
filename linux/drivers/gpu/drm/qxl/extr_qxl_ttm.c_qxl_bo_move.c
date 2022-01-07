
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_operation_ctx {int no_wait_gpu; int interruptible; } ;
struct ttm_mem_reg {scalar_t__ mem_type; } ;
struct ttm_buffer_object {int * ttm; struct ttm_mem_reg mem; } ;


 scalar_t__ TTM_PL_SYSTEM ;
 int qxl_move_null (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_move_memcpy (struct ttm_buffer_object*,struct ttm_operation_ctx*,struct ttm_mem_reg*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int ,int ) ;

__attribute__((used)) static int qxl_bo_move(struct ttm_buffer_object *bo, bool evict,
         struct ttm_operation_ctx *ctx,
         struct ttm_mem_reg *new_mem)
{
 struct ttm_mem_reg *old_mem = &bo->mem;
 int ret;

 ret = ttm_bo_wait(bo, ctx->interruptible, ctx->no_wait_gpu);
 if (ret)
  return ret;

 if (old_mem->mem_type == TTM_PL_SYSTEM && bo->ttm == ((void*)0)) {
  qxl_move_null(bo, new_mem);
  return 0;
 }
 return ttm_bo_move_memcpy(bo, ctx, new_mem);
}
