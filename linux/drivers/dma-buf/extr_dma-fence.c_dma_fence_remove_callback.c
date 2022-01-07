
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_cb {int node; } ;
struct dma_fence {int lock; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

bool
dma_fence_remove_callback(struct dma_fence *fence, struct dma_fence_cb *cb)
{
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(fence->lock, flags);

 ret = !list_empty(&cb->node);
 if (ret)
  list_del_init(&cb->node);

 spin_unlock_irqrestore(fence->lock, flags);

 return ret;
}
