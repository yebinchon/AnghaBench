
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct vc4_exec_info {int bo_count; TYPE_1__** bo; } ;
struct drm_gem_object {TYPE_2__* resv; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {struct drm_gem_object base; } ;


 int EDEADLK ;
 int dma_resv_reserve_shared (TYPE_2__*,int) ;
 int reservation_ww_class ;
 int vc4_unlock_bo_reservations (struct drm_device*,struct vc4_exec_info*,struct ww_acquire_ctx*) ;
 int ww_acquire_done (struct ww_acquire_ctx*) ;
 int ww_acquire_init (struct ww_acquire_ctx*,int *) ;
 int ww_mutex_lock_interruptible (int *,struct ww_acquire_ctx*) ;
 int ww_mutex_lock_slow_interruptible (int *,struct ww_acquire_ctx*) ;
 int ww_mutex_unlock (int *) ;

__attribute__((used)) static int
vc4_lock_bo_reservations(struct drm_device *dev,
    struct vc4_exec_info *exec,
    struct ww_acquire_ctx *acquire_ctx)
{
 int contended_lock = -1;
 int i, ret;
 struct drm_gem_object *bo;

 ww_acquire_init(acquire_ctx, &reservation_ww_class);

retry:
 if (contended_lock != -1) {
  bo = &exec->bo[contended_lock]->base;
  ret = ww_mutex_lock_slow_interruptible(&bo->resv->lock,
             acquire_ctx);
  if (ret) {
   ww_acquire_done(acquire_ctx);
   return ret;
  }
 }

 for (i = 0; i < exec->bo_count; i++) {
  if (i == contended_lock)
   continue;

  bo = &exec->bo[i]->base;

  ret = ww_mutex_lock_interruptible(&bo->resv->lock, acquire_ctx);
  if (ret) {
   int j;

   for (j = 0; j < i; j++) {
    bo = &exec->bo[j]->base;
    ww_mutex_unlock(&bo->resv->lock);
   }

   if (contended_lock != -1 && contended_lock >= i) {
    bo = &exec->bo[contended_lock]->base;

    ww_mutex_unlock(&bo->resv->lock);
   }

   if (ret == -EDEADLK) {
    contended_lock = i;
    goto retry;
   }

   ww_acquire_done(acquire_ctx);
   return ret;
  }
 }

 ww_acquire_done(acquire_ctx);




 for (i = 0; i < exec->bo_count; i++) {
  bo = &exec->bo[i]->base;

  ret = dma_resv_reserve_shared(bo->resv, 1);
  if (ret) {
   vc4_unlock_bo_reservations(dev, exec, acquire_ctx);
   return ret;
  }
 }

 return 0;
}
