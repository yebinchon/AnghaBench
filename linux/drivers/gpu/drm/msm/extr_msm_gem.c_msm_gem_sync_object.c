
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_fence_context {scalar_t__ context; } ;
struct drm_gem_object {int resv; } ;
struct dma_resv_list {int shared_count; int * shared; } ;
struct dma_fence {scalar_t__ context; } ;


 int dma_fence_wait (struct dma_fence*,int) ;
 struct dma_fence* dma_resv_get_excl (int ) ;
 struct dma_resv_list* dma_resv_get_list (int ) ;
 int dma_resv_held (int ) ;
 struct dma_fence* rcu_dereference_protected (int ,int ) ;

int msm_gem_sync_object(struct drm_gem_object *obj,
  struct msm_fence_context *fctx, bool exclusive)
{
 struct dma_resv_list *fobj;
 struct dma_fence *fence;
 int i, ret;

 fobj = dma_resv_get_list(obj->resv);
 if (!fobj || (fobj->shared_count == 0)) {
  fence = dma_resv_get_excl(obj->resv);

  if (fence && (fence->context != fctx->context)) {
   ret = dma_fence_wait(fence, 1);
   if (ret)
    return ret;
  }
 }

 if (!exclusive || !fobj)
  return 0;

 for (i = 0; i < fobj->shared_count; i++) {
  fence = rcu_dereference_protected(fobj->shared[i],
      dma_resv_held(obj->resv));
  if (fence->context != fctx->context) {
   ret = dma_fence_wait(fence, 1);
   if (ret)
    return ret;
  }
 }

 return 0;
}
