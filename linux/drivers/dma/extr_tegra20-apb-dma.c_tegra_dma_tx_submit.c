
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_desc {int tx_list; int txd; int dma_status; } ;
struct tegra_dma_channel {int lock; int pending_sg_req; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int DMA_IN_PROGRESS ;
 int dma_cookie_assign (int *) ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tegra_dma_channel* to_tegra_dma_chan (int ) ;
 struct tegra_dma_desc* txd_to_tegra_dma_desc (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t tegra_dma_tx_submit(struct dma_async_tx_descriptor *txd)
{
 struct tegra_dma_desc *dma_desc = txd_to_tegra_dma_desc(txd);
 struct tegra_dma_channel *tdc = to_tegra_dma_chan(txd->chan);
 unsigned long flags;
 dma_cookie_t cookie;

 spin_lock_irqsave(&tdc->lock, flags);
 dma_desc->dma_status = DMA_IN_PROGRESS;
 cookie = dma_cookie_assign(&dma_desc->txd);
 list_splice_tail_init(&dma_desc->tx_list, &tdc->pending_sg_req);
 spin_unlock_irqrestore(&tdc->lock, flags);
 return cookie;
}
