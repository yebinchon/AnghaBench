
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_dma_desc {int desc_node; } ;
struct pch_dma_chan {int lock; int queue; int active_list; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int pdc_dostart (struct pch_dma_chan*,struct pch_dma_desc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct pch_dma_chan* to_pd_chan (int ) ;
 struct pch_dma_desc* to_pd_desc (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t pd_tx_submit(struct dma_async_tx_descriptor *txd)
{
 struct pch_dma_desc *desc = to_pd_desc(txd);
 struct pch_dma_chan *pd_chan = to_pd_chan(txd->chan);

 spin_lock(&pd_chan->lock);

 if (list_empty(&pd_chan->active_list)) {
  list_add_tail(&desc->desc_node, &pd_chan->active_list);
  pdc_dostart(pd_chan, desc);
 } else {
  list_add_tail(&desc->desc_node, &pd_chan->queue);
 }

 spin_unlock(&pd_chan->lock);
 return 0;
}
