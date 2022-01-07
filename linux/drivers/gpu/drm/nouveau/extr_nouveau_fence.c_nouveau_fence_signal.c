
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_fence_chan {int notify_ref; } ;
struct TYPE_3__ {int flags; } ;
struct nouveau_fence {TYPE_1__ base; int channel; int head; } ;


 int DMA_FENCE_FLAG_USER_BITS ;
 int dma_fence_put (TYPE_1__*) ;
 int dma_fence_signal_locked (TYPE_1__*) ;
 int list_del (int *) ;
 struct nouveau_fence_chan* nouveau_fctx (struct nouveau_fence*) ;
 int rcu_assign_pointer (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
nouveau_fence_signal(struct nouveau_fence *fence)
{
 int drop = 0;

 dma_fence_signal_locked(&fence->base);
 list_del(&fence->head);
 rcu_assign_pointer(fence->channel, ((void*)0));

 if (test_bit(DMA_FENCE_FLAG_USER_BITS, &fence->base.flags)) {
  struct nouveau_fence_chan *fctx = nouveau_fctx(fence);

  if (!--fctx->notify_ref)
   drop = 1;
 }

 dma_fence_put(&fence->base);
 return drop;
}
