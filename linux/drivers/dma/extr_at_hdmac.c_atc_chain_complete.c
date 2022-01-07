
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_async_tx_descriptor {int cookie; } ;
struct TYPE_2__ {int device; } ;
struct at_dma_chan {int free_list; TYPE_1__ chan_common; } ;
struct at_dma {int memset_pool; } ;
struct at_desc {int memset_buffer; int desc_node; int tx_list; int memset_paddr; int memset_vaddr; struct dma_async_tx_descriptor txd; } ;


 int atc_chan_is_cyclic (struct at_dma_chan*) ;
 int chan2dev (TYPE_1__*) ;
 int dev_vdbg (int ,char*,int ) ;
 int dma_cookie_complete (struct dma_async_tx_descriptor*) ;
 int dma_descriptor_unmap (struct dma_async_tx_descriptor*) ;
 int dma_pool_free (int ,int ,int ) ;
 int dma_run_dependencies (struct dma_async_tx_descriptor*) ;
 int dmaengine_desc_get_callback_invoke (struct dma_async_tx_descriptor*,int *) ;
 int list_move (int *,int *) ;
 int list_splice_init (int *,int *) ;
 struct at_dma* to_at_dma (int ) ;

__attribute__((used)) static void
atc_chain_complete(struct at_dma_chan *atchan, struct at_desc *desc)
{
 struct dma_async_tx_descriptor *txd = &desc->txd;
 struct at_dma *atdma = to_at_dma(atchan->chan_common.device);

 dev_vdbg(chan2dev(&atchan->chan_common),
  "descriptor %u complete\n", txd->cookie);


 if (!atc_chan_is_cyclic(atchan))
  dma_cookie_complete(txd);


 if (desc->memset_buffer) {
  dma_pool_free(atdma->memset_pool, desc->memset_vaddr,
         desc->memset_paddr);
  desc->memset_buffer = 0;
 }


 list_splice_init(&desc->tx_list, &atchan->free_list);

 list_move(&desc->desc_node, &atchan->free_list);

 dma_descriptor_unmap(txd);


 if (!atc_chan_is_cyclic(atchan)) {




  dmaengine_desc_get_callback_invoke(txd, ((void*)0));
 }

 dma_run_dependencies(txd);
}
