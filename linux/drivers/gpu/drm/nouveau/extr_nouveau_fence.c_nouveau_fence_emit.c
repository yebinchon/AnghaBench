
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_fence_priv {scalar_t__ uevent; } ;
struct nouveau_fence_chan {int (* emit ) (struct nouveau_fence*) ;int lock; int pending; int notify; int fence_ref; int sequence; int context; } ;
struct nouveau_fence {int head; int base; scalar_t__ timeout; struct nouveau_channel* channel; } ;
struct nouveau_channel {TYPE_1__* drm; struct nouveau_fence_chan* fence; } ;
struct TYPE_2__ {scalar_t__ fence; } ;


 int HZ ;
 int dma_fence_get (int *) ;
 int dma_fence_init (int *,int *,int *,int ,int ) ;
 scalar_t__ jiffies ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int nouveau_fence_ops_legacy ;
 int nouveau_fence_ops_uevent ;
 scalar_t__ nouveau_fence_update (struct nouveau_channel*,struct nouveau_fence_chan*) ;
 int nvif_notify_put (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct nouveau_fence*) ;
 int trace_dma_fence_emit (int *) ;

int
nouveau_fence_emit(struct nouveau_fence *fence, struct nouveau_channel *chan)
{
 struct nouveau_fence_chan *fctx = chan->fence;
 struct nouveau_fence_priv *priv = (void*)chan->drm->fence;
 int ret;

 fence->channel = chan;
 fence->timeout = jiffies + (15 * HZ);

 if (priv->uevent)
  dma_fence_init(&fence->base, &nouveau_fence_ops_uevent,
          &fctx->lock, fctx->context, ++fctx->sequence);
 else
  dma_fence_init(&fence->base, &nouveau_fence_ops_legacy,
          &fctx->lock, fctx->context, ++fctx->sequence);
 kref_get(&fctx->fence_ref);

 trace_dma_fence_emit(&fence->base);
 ret = fctx->emit(fence);
 if (!ret) {
  dma_fence_get(&fence->base);
  spin_lock_irq(&fctx->lock);

  if (nouveau_fence_update(chan, fctx))
   nvif_notify_put(&fctx->notify);

  list_add_tail(&fence->head, &fctx->pending);
  spin_unlock_irq(&fctx->lock);
 }

 return ret;
}
