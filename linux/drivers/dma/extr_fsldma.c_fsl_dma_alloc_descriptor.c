
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsldma_chan {int common; int desc_pool; } ;
struct TYPE_2__ {int phys; int tx_submit; } ;
struct fsl_desc_sw {TYPE_1__ async_tx; int tx_list; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int chan_dbg (struct fsldma_chan*,char*,...) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,int *) ;
 struct fsl_desc_sw* dma_pool_zalloc (int ,int ,int *) ;
 int fsl_dma_tx_submit ;

__attribute__((used)) static struct fsl_desc_sw *fsl_dma_alloc_descriptor(struct fsldma_chan *chan)
{
 struct fsl_desc_sw *desc;
 dma_addr_t pdesc;

 desc = dma_pool_zalloc(chan->desc_pool, GFP_ATOMIC, &pdesc);
 if (!desc) {
  chan_dbg(chan, "out of memory for link descriptor\n");
  return ((void*)0);
 }

 INIT_LIST_HEAD(&desc->tx_list);
 dma_async_tx_descriptor_init(&desc->async_tx, &chan->common);
 desc->async_tx.tx_submit = fsl_dma_tx_submit;
 desc->async_tx.phys = pdesc;

 chan_dbg(chan, "LD %p allocated\n", desc);

 return desc;
}
