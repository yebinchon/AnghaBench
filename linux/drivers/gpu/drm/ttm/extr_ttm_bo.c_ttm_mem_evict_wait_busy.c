
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct ttm_operation_ctx {scalar_t__ interruptible; } ;
struct TYPE_2__ {int resv; } ;
struct ttm_buffer_object {TYPE_1__ base; } ;


 int EBUSY ;
 int EDEADLK ;
 int dma_resv_lock (int ,struct ww_acquire_ctx*) ;
 int dma_resv_lock_interruptible (int ,struct ww_acquire_ctx*) ;
 int dma_resv_unlock (int ) ;

__attribute__((used)) static int ttm_mem_evict_wait_busy(struct ttm_buffer_object *busy_bo,
       struct ttm_operation_ctx *ctx,
       struct ww_acquire_ctx *ticket)
{
 int r;

 if (!busy_bo || !ticket)
  return -EBUSY;

 if (ctx->interruptible)
  r = dma_resv_lock_interruptible(busy_bo->base.resv,
         ticket);
 else
  r = dma_resv_lock(busy_bo->base.resv, ticket);






 if (!r)
  dma_resv_unlock(busy_bo->base.resv);

 return r == -EDEADLK ? -EBUSY : r;
}
