
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_dma_desc {int desc_node; int tx_list; } ;
struct pch_dma_chan {int lock; int free_list; } ;


 int list_add (int *,int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pdc_desc_put(struct pch_dma_chan *pd_chan,
    struct pch_dma_desc *desc)
{
 if (desc) {
  spin_lock(&pd_chan->lock);
  list_splice_init(&desc->tx_list, &pd_chan->free_list);
  list_add(&desc->desc_node, &pd_chan->free_list);
  spin_unlock(&pd_chan->lock);
 }
}
