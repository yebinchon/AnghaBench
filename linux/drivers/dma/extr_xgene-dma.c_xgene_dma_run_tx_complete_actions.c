
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {scalar_t__ cookie; } ;
struct xgene_dma_desc_sw {struct dma_async_tx_descriptor tx; } ;
struct xgene_dma_chan {int dummy; } ;


 int dma_cookie_complete (struct dma_async_tx_descriptor*) ;
 int dma_descriptor_unmap (struct dma_async_tx_descriptor*) ;
 int dma_run_dependencies (struct dma_async_tx_descriptor*) ;
 int dmaengine_desc_get_callback_invoke (struct dma_async_tx_descriptor*,int *) ;

__attribute__((used)) static void xgene_dma_run_tx_complete_actions(struct xgene_dma_chan *chan,
           struct xgene_dma_desc_sw *desc)
{
 struct dma_async_tx_descriptor *tx = &desc->tx;
 if (tx->cookie == 0)
  return;

 dma_cookie_complete(tx);
 dma_descriptor_unmap(tx);


 dmaengine_desc_get_callback_invoke(tx, ((void*)0));


 dma_run_dependencies(tx);
}
