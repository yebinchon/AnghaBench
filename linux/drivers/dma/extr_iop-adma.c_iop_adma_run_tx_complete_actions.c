
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {scalar_t__ cookie; } ;
struct iop_adma_desc_slot {int * group_head; struct dma_async_tx_descriptor async_tx; } ;
struct iop_adma_chan {int dummy; } ;
typedef scalar_t__ dma_cookie_t ;


 int BUG_ON (int) ;
 int dma_descriptor_unmap (struct dma_async_tx_descriptor*) ;
 int dma_run_dependencies (struct dma_async_tx_descriptor*) ;
 int dmaengine_desc_get_callback_invoke (struct dma_async_tx_descriptor*,int *) ;

__attribute__((used)) static dma_cookie_t
iop_adma_run_tx_complete_actions(struct iop_adma_desc_slot *desc,
 struct iop_adma_chan *iop_chan, dma_cookie_t cookie)
{
 struct dma_async_tx_descriptor *tx = &desc->async_tx;

 BUG_ON(tx->cookie < 0);
 if (tx->cookie > 0) {
  cookie = tx->cookie;
  tx->cookie = 0;




  dmaengine_desc_get_callback_invoke(tx, ((void*)0));

  dma_descriptor_unmap(tx);
  if (desc->group_head)
   desc->group_head = ((void*)0);
 }


 dma_run_dependencies(tx);

 return cookie;
}
