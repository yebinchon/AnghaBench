
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imxdma_engine {int lock; } ;
struct TYPE_2__ {int next; } ;
struct imxdma_channel {int ld_queue; TYPE_1__ ld_free; struct imxdma_engine* imxdma; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int dma_cookie_assign (struct dma_async_tx_descriptor*) ;
 int list_move_tail (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct imxdma_channel* to_imxdma_chan (int ) ;

__attribute__((used)) static dma_cookie_t imxdma_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct imxdma_channel *imxdmac = to_imxdma_chan(tx->chan);
 struct imxdma_engine *imxdma = imxdmac->imxdma;
 dma_cookie_t cookie;
 unsigned long flags;

 spin_lock_irqsave(&imxdma->lock, flags);
 list_move_tail(imxdmac->ld_free.next, &imxdmac->ld_queue);
 cookie = dma_cookie_assign(tx);
 spin_unlock_irqrestore(&imxdma->lock, flags);

 return cookie;
}
