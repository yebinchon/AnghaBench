
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_submit; int phys; } ;
struct xgene_dma_desc_sw {TYPE_1__ tx; int tx_list; } ;
struct xgene_dma_chan {int dma_chan; int desc_pool; } ;
typedef int dma_addr_t ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int chan_dbg (struct xgene_dma_chan*,char*,struct xgene_dma_desc_sw*) ;
 int chan_err (struct xgene_dma_chan*,char*) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,int *) ;
 struct xgene_dma_desc_sw* dma_pool_zalloc (int ,int ,int *) ;
 int xgene_dma_tx_submit ;

__attribute__((used)) static struct xgene_dma_desc_sw *xgene_dma_alloc_descriptor(
     struct xgene_dma_chan *chan)
{
 struct xgene_dma_desc_sw *desc;
 dma_addr_t phys;

 desc = dma_pool_zalloc(chan->desc_pool, GFP_NOWAIT, &phys);
 if (!desc) {
  chan_err(chan, "Failed to allocate LDs\n");
  return ((void*)0);
 }

 INIT_LIST_HEAD(&desc->tx_list);
 desc->tx.phys = phys;
 desc->tx.tx_submit = xgene_dma_tx_submit;
 dma_async_tx_descriptor_init(&desc->tx, &chan->dma_chan);

 chan_dbg(chan, "LD %p allocated\n", desc);

 return desc;
}
