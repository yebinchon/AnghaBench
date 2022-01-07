
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int lock; } ;


 int EINVAL ;
 int dma_fence_signal_locked (struct dma_fence*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int dma_fence_signal(struct dma_fence *fence)
{
 unsigned long flags;
 int ret;

 if (!fence)
  return -EINVAL;

 spin_lock_irqsave(fence->lock, flags);
 ret = dma_fence_signal_locked(fence);
 spin_unlock_irqrestore(fence->lock, flags);

 return ret;
}
