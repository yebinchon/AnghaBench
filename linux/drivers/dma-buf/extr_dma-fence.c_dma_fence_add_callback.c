
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_fence_cb {int node; scalar_t__ func; } ;
struct dma_fence {int lock; int cb_list; TYPE_1__* ops; int flags; } ;
typedef scalar_t__ dma_fence_func_t ;
struct TYPE_2__ {int (* enable_signaling ) (struct dma_fence*) ;} ;


 int DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ;
 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int EINVAL ;
 int ENOENT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int dma_fence_signal_locked (struct dma_fence*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct dma_fence*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_dma_fence_enable_signal (struct dma_fence*) ;

int dma_fence_add_callback(struct dma_fence *fence, struct dma_fence_cb *cb,
      dma_fence_func_t func)
{
 unsigned long flags;
 int ret = 0;
 bool was_set;

 if (WARN_ON(!fence || !func))
  return -EINVAL;

 if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
  INIT_LIST_HEAD(&cb->node);
  return -ENOENT;
 }

 spin_lock_irqsave(fence->lock, flags);

 was_set = test_and_set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
       &fence->flags);

 if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
  ret = -ENOENT;
 else if (!was_set && fence->ops->enable_signaling) {
  trace_dma_fence_enable_signal(fence);

  if (!fence->ops->enable_signaling(fence)) {
   dma_fence_signal_locked(fence);
   ret = -ENOENT;
  }
 }

 if (!ret) {
  cb->func = func;
  list_add_tail(&cb->node, &fence->cb_list);
 } else
  INIT_LIST_HEAD(&cb->node);
 spin_unlock_irqrestore(fence->lock, flags);

 return ret;
}
