
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct drm_gem_object {int resv; } ;


 int EDEADLK ;
 int dma_resv_lock_interruptible (int ,struct ww_acquire_ctx*) ;
 int dma_resv_lock_slow_interruptible (int ,struct ww_acquire_ctx*) ;
 int dma_resv_unlock (int ) ;
 int reservation_ww_class ;
 int ww_acquire_done (struct ww_acquire_ctx*) ;
 int ww_acquire_init (struct ww_acquire_ctx*,int *) ;

int
drm_gem_lock_reservations(struct drm_gem_object **objs, int count,
     struct ww_acquire_ctx *acquire_ctx)
{
 int contended = -1;
 int i, ret;

 ww_acquire_init(acquire_ctx, &reservation_ww_class);

retry:
 if (contended != -1) {
  struct drm_gem_object *obj = objs[contended];

  ret = dma_resv_lock_slow_interruptible(obj->resv,
         acquire_ctx);
  if (ret) {
   ww_acquire_done(acquire_ctx);
   return ret;
  }
 }

 for (i = 0; i < count; i++) {
  if (i == contended)
   continue;

  ret = dma_resv_lock_interruptible(objs[i]->resv,
           acquire_ctx);
  if (ret) {
   int j;

   for (j = 0; j < i; j++)
    dma_resv_unlock(objs[j]->resv);

   if (contended != -1 && contended >= i)
    dma_resv_unlock(objs[contended]->resv);

   if (ret == -EDEADLK) {
    contended = i;
    goto retry;
   }

   ww_acquire_done(acquire_ctx);
   return ret;
  }
 }

 ww_acquire_done(acquire_ctx);

 return 0;
}
