
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_operation_ctx {scalar_t__ resv; int flags; } ;
struct TYPE_2__ {scalar_t__ resv; } ;
struct ttm_buffer_object {TYPE_1__ base; int ddestroy; } ;


 int TTM_OPT_FLAG_ALLOW_RES_EVICT ;
 int dma_resv_assert_held (scalar_t__) ;
 int dma_resv_trylock (scalar_t__) ;
 int list_empty (int *) ;

__attribute__((used)) static bool ttm_bo_evict_swapout_allowable(struct ttm_buffer_object *bo,
   struct ttm_operation_ctx *ctx, bool *locked, bool *busy)
{
 bool ret = 0;

 if (bo->base.resv == ctx->resv) {
  dma_resv_assert_held(bo->base.resv);
  if (ctx->flags & TTM_OPT_FLAG_ALLOW_RES_EVICT
      || !list_empty(&bo->ddestroy))
   ret = 1;
  *locked = 0;
  if (busy)
   *busy = 0;
 } else {
  ret = dma_resv_trylock(bo->base.resv);
  *locked = ret;
  if (busy)
   *busy = !ret;
 }

 return ret;
}
