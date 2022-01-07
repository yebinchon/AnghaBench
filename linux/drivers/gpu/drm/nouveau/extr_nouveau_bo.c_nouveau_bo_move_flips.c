
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_placement {int num_placement; int num_busy_placement; struct ttm_place* busy_placement; struct ttm_place* placement; } ;
struct ttm_place {int flags; int lpfn; int fpfn; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct ttm_mem_reg {int * mm_node; } ;
struct ttm_buffer_object {int dummy; } ;


 int TTM_PL_FLAG_TT ;
 int TTM_PL_MASK_CACHING ;
 int nouveau_bo_move_m2mf (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ;
 int ttm_bo_mem_put (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_mem_space (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,struct ttm_operation_ctx*) ;
 int ttm_bo_move_ttm (struct ttm_buffer_object*,struct ttm_operation_ctx*,struct ttm_mem_reg*) ;

__attribute__((used)) static int
nouveau_bo_move_flips(struct ttm_buffer_object *bo, bool evict, bool intr,
        bool no_wait_gpu, struct ttm_mem_reg *new_reg)
{
 struct ttm_operation_ctx ctx = { intr, no_wait_gpu };
 struct ttm_place placement_memtype = {
  .fpfn = 0,
  .lpfn = 0,
  .flags = TTM_PL_FLAG_TT | TTM_PL_MASK_CACHING
 };
 struct ttm_placement placement;
 struct ttm_mem_reg tmp_reg;
 int ret;

 placement.num_placement = placement.num_busy_placement = 1;
 placement.placement = placement.busy_placement = &placement_memtype;

 tmp_reg = *new_reg;
 tmp_reg.mm_node = ((void*)0);
 ret = ttm_bo_mem_space(bo, &placement, &tmp_reg, &ctx);
 if (ret)
  return ret;

 ret = ttm_bo_move_ttm(bo, &ctx, &tmp_reg);
 if (ret)
  goto out;

 ret = nouveau_bo_move_m2mf(bo, 1, intr, no_wait_gpu, new_reg);
 if (ret)
  goto out;

out:
 ttm_bo_mem_put(bo, &tmp_reg);
 return ret;
}
