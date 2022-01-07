
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct drm_gem_object {int resv; } ;


 int dma_resv_unlock (int ) ;
 int ww_acquire_fini (struct ww_acquire_ctx*) ;

void
drm_gem_unlock_reservations(struct drm_gem_object **objs, int count,
       struct ww_acquire_ctx *acquire_ctx)
{
 int i;

 for (i = 0; i < count; i++)
  dma_resv_unlock(objs[i]->resv);

 ww_acquire_fini(acquire_ctx);
}
