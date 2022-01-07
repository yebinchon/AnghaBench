
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_global {int lock; int bo_glob; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_swapout (int ,struct ttm_operation_ctx*) ;
 scalar_t__ ttm_zones_above_swap_target (struct ttm_mem_global*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ttm_shrink(struct ttm_mem_global *glob, bool from_wq,
   uint64_t extra, struct ttm_operation_ctx *ctx)
{
 int ret;

 spin_lock(&glob->lock);

 while (ttm_zones_above_swap_target(glob, from_wq, extra)) {
  spin_unlock(&glob->lock);
  ret = ttm_bo_swapout(glob->bo_glob, ctx);
  spin_lock(&glob->lock);
  if (unlikely(ret != 0))
   break;
 }

 spin_unlock(&glob->lock);
}
