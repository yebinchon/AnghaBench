
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int dummy; } ;
struct dma_async_tx_descriptor {scalar_t__ cookie; } ;
struct fsl_desc_sw {struct dma_async_tx_descriptor async_tx; } ;
typedef scalar_t__ dma_cookie_t ;


 int BUG_ON (int) ;
 int dma_descriptor_unmap (struct dma_async_tx_descriptor*) ;
 int dma_run_dependencies (struct dma_async_tx_descriptor*) ;
 int dmaengine_desc_get_callback_invoke (struct dma_async_tx_descriptor*,int *) ;

__attribute__((used)) static dma_cookie_t fsldma_run_tx_complete_actions(struct fsldma_chan *chan,
  struct fsl_desc_sw *desc, dma_cookie_t cookie)
{
 struct dma_async_tx_descriptor *txd = &desc->async_tx;
 dma_cookie_t ret = cookie;

 BUG_ON(txd->cookie < 0);

 if (txd->cookie > 0) {
  ret = txd->cookie;

  dma_descriptor_unmap(txd);

  dmaengine_desc_get_callback_invoke(txd, ((void*)0));
 }


 dma_run_dependencies(txd);

 return ret;
}
