
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_sw_desc {int node; } ;
struct msgdma_device {int lock; int pending_list; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int dma_cookie_assign (struct dma_async_tx_descriptor*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct msgdma_device* to_mdev (int ) ;
 struct msgdma_sw_desc* tx_to_desc (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t msgdma_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct msgdma_device *mdev = to_mdev(tx->chan);
 struct msgdma_sw_desc *new;
 dma_cookie_t cookie;
 unsigned long flags;

 new = tx_to_desc(tx);
 spin_lock_irqsave(&mdev->lock, flags);
 cookie = dma_cookie_assign(tx);

 list_add_tail(&new->node, &mdev->pending_list);
 spin_unlock_irqrestore(&mdev->lock, flags);

 return cookie;
}
