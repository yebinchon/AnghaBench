
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_fence_chan {int notify; int notify_ref; } ;
struct TYPE_2__ {int flags; } ;
struct nouveau_fence {TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;


 int DMA_FENCE_FLAG_USER_BITS ;
 struct nouveau_fence* from_fence (struct dma_fence*) ;
 struct nouveau_fence_chan* nouveau_fctx (struct nouveau_fence*) ;
 int nouveau_fence_no_signaling (struct dma_fence*) ;
 int nvif_notify_get (int *) ;
 int nvif_notify_put (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static bool nouveau_fence_enable_signaling(struct dma_fence *f)
{
 struct nouveau_fence *fence = from_fence(f);
 struct nouveau_fence_chan *fctx = nouveau_fctx(fence);
 bool ret;

 if (!fctx->notify_ref++)
  nvif_notify_get(&fctx->notify);

 ret = nouveau_fence_no_signaling(f);
 if (ret)
  set_bit(DMA_FENCE_FLAG_USER_BITS, &fence->base.flags);
 else if (!--fctx->notify_ref)
  nvif_notify_put(&fctx->notify);

 return ret;
}
