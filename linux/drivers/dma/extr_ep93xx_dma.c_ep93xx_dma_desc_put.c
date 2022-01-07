
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_dma_desc {int node; int tx_list; } ;
struct ep93xx_dma_chan {int lock; int free_list; } ;


 int list_add (int *,int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ep93xx_dma_desc_put(struct ep93xx_dma_chan *edmac,
    struct ep93xx_dma_desc *desc)
{
 if (desc) {
  unsigned long flags;

  spin_lock_irqsave(&edmac->lock, flags);
  list_splice_init(&desc->tx_list, &edmac->free_list);
  list_add(&desc->node, &edmac->free_list);
  spin_unlock_irqrestore(&edmac->lock, flags);
 }
}
