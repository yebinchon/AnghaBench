
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_fence {int lock; int flags; int cb_list; TYPE_1__* ops; } ;
struct TYPE_4__ {int node; int func; } ;
struct default_wait_cb {TYPE_2__ base; int task; } ;
struct TYPE_3__ {int (* enable_signaling ) (struct dma_fence*) ;} ;


 int DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ;
 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 long ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 int dma_fence_default_wait_cb ;
 int dma_fence_signal_locked (struct dma_fence*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 long schedule_timeout (long) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct dma_fence*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_dma_fence_enable_signal (struct dma_fence*) ;

signed long
dma_fence_default_wait(struct dma_fence *fence, bool intr, signed long timeout)
{
 struct default_wait_cb cb;
 unsigned long flags;
 signed long ret = timeout ? timeout : 1;
 bool was_set;

 if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
  return ret;

 spin_lock_irqsave(fence->lock, flags);

 if (intr && signal_pending(current)) {
  ret = -ERESTARTSYS;
  goto out;
 }

 was_set = test_and_set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
       &fence->flags);

 if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
  goto out;

 if (!was_set && fence->ops->enable_signaling) {
  trace_dma_fence_enable_signal(fence);

  if (!fence->ops->enable_signaling(fence)) {
   dma_fence_signal_locked(fence);
   goto out;
  }
 }

 if (!timeout) {
  ret = 0;
  goto out;
 }

 cb.base.func = dma_fence_default_wait_cb;
 cb.task = current;
 list_add(&cb.base.node, &fence->cb_list);

 while (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags) && ret > 0) {
  if (intr)
   __set_current_state(TASK_INTERRUPTIBLE);
  else
   __set_current_state(TASK_UNINTERRUPTIBLE);
  spin_unlock_irqrestore(fence->lock, flags);

  ret = schedule_timeout(ret);

  spin_lock_irqsave(fence->lock, flags);
  if (ret > 0 && intr && signal_pending(current))
   ret = -ERESTARTSYS;
 }

 if (!list_empty(&cb.base.node))
  list_del(&cb.base.node);
 __set_current_state(TASK_RUNNING);

out:
 spin_unlock_irqrestore(fence->lock, flags);
 return ret;
}
