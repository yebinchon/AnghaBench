
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_fence_chan {int lock; int notify; } ;
struct TYPE_2__ {int flags; int * ops; } ;
struct nouveau_fence {TYPE_1__ base; int channel; } ;
struct nouveau_channel {int dummy; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int dma_fence_is_signaled (TYPE_1__*) ;
 int lockdep_is_held (int *) ;
 struct nouveau_fence_chan* nouveau_fctx (struct nouveau_fence*) ;
 int nouveau_fence_ops_legacy ;
 int nouveau_fence_ops_uevent ;
 scalar_t__ nouveau_fence_update (struct nouveau_channel*,struct nouveau_fence_chan*) ;
 int nvif_notify_put (int *) ;
 struct nouveau_channel* rcu_dereference_protected (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

bool
nouveau_fence_done(struct nouveau_fence *fence)
{
 if (fence->base.ops == &nouveau_fence_ops_legacy ||
     fence->base.ops == &nouveau_fence_ops_uevent) {
  struct nouveau_fence_chan *fctx = nouveau_fctx(fence);
  struct nouveau_channel *chan;
  unsigned long flags;

  if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->base.flags))
   return 1;

  spin_lock_irqsave(&fctx->lock, flags);
  chan = rcu_dereference_protected(fence->channel, lockdep_is_held(&fctx->lock));
  if (chan && nouveau_fence_update(chan, fctx))
   nvif_notify_put(&fctx->notify);
  spin_unlock_irqrestore(&fctx->lock, flags);
 }
 return dma_fence_is_signaled(&fence->base);
}
