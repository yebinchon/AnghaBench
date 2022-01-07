
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_desc {int node; int tx_list; } ;
struct tegra_dma_channel {int lock; int free_dma_desc; int free_sg_req; } ;


 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tegra_dma_desc_put(struct tegra_dma_channel *tdc,
  struct tegra_dma_desc *dma_desc)
{
 unsigned long flags;

 spin_lock_irqsave(&tdc->lock, flags);
 if (!list_empty(&dma_desc->tx_list))
  list_splice_init(&dma_desc->tx_list, &tdc->free_sg_req);
 list_add_tail(&dma_desc->node, &tdc->free_dma_desc);
 spin_unlock_irqrestore(&tdc->lock, flags);
}
