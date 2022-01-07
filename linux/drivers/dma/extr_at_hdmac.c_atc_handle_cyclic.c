
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {int dummy; } ;
struct at_dma_chan {int chan_common; } ;
struct at_desc {struct dma_async_tx_descriptor txd; } ;


 int DSCR ;
 struct at_desc* atc_first_active (struct at_dma_chan*) ;
 int chan2dev (int *) ;
 int channel_readl (struct at_dma_chan*,int ) ;
 int dev_vdbg (int ,char*,int ) ;
 int dmaengine_desc_get_callback_invoke (struct dma_async_tx_descriptor*,int *) ;

__attribute__((used)) static void atc_handle_cyclic(struct at_dma_chan *atchan)
{
 struct at_desc *first = atc_first_active(atchan);
 struct dma_async_tx_descriptor *txd = &first->txd;

 dev_vdbg(chan2dev(&atchan->chan_common),
   "new cyclic period llp 0x%08x\n",
   channel_readl(atchan, DSCR));

 dmaengine_desc_get_callback_invoke(txd, ((void*)0));
}
