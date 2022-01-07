
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_fence_cb {int dummy; } ;
struct dma_fence {int dummy; } ;
struct dma_buf_poll_cb_t {TYPE_1__* poll; scalar_t__ active; } ;
struct TYPE_2__ {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_locked_poll (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void dma_buf_poll_cb(struct dma_fence *fence, struct dma_fence_cb *cb)
{
 struct dma_buf_poll_cb_t *dcb = (struct dma_buf_poll_cb_t *)cb;
 unsigned long flags;

 spin_lock_irqsave(&dcb->poll->lock, flags);
 wake_up_locked_poll(dcb->poll, dcb->active);
 dcb->active = 0;
 spin_unlock_irqrestore(&dcb->poll->lock, flags);
}
