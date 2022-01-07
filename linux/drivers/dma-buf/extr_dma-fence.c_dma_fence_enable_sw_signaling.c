
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_fence {int lock; TYPE_1__* ops; int flags; } ;
struct TYPE_2__ {int (* enable_signaling ) (struct dma_fence*) ;} ;


 int DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ;
 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int dma_fence_signal_locked (struct dma_fence*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct dma_fence*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int trace_dma_fence_enable_signal (struct dma_fence*) ;

void dma_fence_enable_sw_signaling(struct dma_fence *fence)
{
 unsigned long flags;

 if (!test_and_set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
         &fence->flags) &&
     !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags) &&
     fence->ops->enable_signaling) {
  trace_dma_fence_enable_signal(fence);

  spin_lock_irqsave(fence->lock, flags);

  if (!fence->ops->enable_signaling(fence))
   dma_fence_signal_locked(fence);

  spin_unlock_irqrestore(fence->lock, flags);
 }
}
