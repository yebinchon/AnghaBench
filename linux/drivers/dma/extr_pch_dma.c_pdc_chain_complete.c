
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {int dummy; } ;
struct pch_dma_desc {int desc_node; int tx_list; struct dma_async_tx_descriptor txd; } ;
struct pch_dma_chan {int free_list; } ;
struct dmaengine_desc_callback {int dummy; } ;


 int dmaengine_desc_callback_invoke (struct dmaengine_desc_callback*,int *) ;
 int dmaengine_desc_get_callback (struct dma_async_tx_descriptor*,struct dmaengine_desc_callback*) ;
 int list_move (int *,int *) ;
 int list_splice_init (int *,int *) ;

__attribute__((used)) static void pdc_chain_complete(struct pch_dma_chan *pd_chan,
          struct pch_dma_desc *desc)
{
 struct dma_async_tx_descriptor *txd = &desc->txd;
 struct dmaengine_desc_callback cb;

 dmaengine_desc_get_callback(txd, &cb);
 list_splice_init(&desc->tx_list, &pd_chan->free_list);
 list_move(&desc->desc_node, &pd_chan->free_list);

 dmaengine_desc_callback_invoke(&cb, ((void*)0));
}
