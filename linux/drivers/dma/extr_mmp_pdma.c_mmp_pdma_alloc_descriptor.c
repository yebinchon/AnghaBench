
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phys; int tx_submit; } ;
struct mmp_pdma_desc_sw {TYPE_1__ async_tx; int tx_list; } ;
struct mmp_pdma_chan {int chan; int dev; int desc_pool; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int ,char*) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,int *) ;
 struct mmp_pdma_desc_sw* dma_pool_zalloc (int ,int ,int *) ;
 int mmp_pdma_tx_submit ;

__attribute__((used)) static struct mmp_pdma_desc_sw *
mmp_pdma_alloc_descriptor(struct mmp_pdma_chan *chan)
{
 struct mmp_pdma_desc_sw *desc;
 dma_addr_t pdesc;

 desc = dma_pool_zalloc(chan->desc_pool, GFP_ATOMIC, &pdesc);
 if (!desc) {
  dev_err(chan->dev, "out of memory for link descriptor\n");
  return ((void*)0);
 }

 INIT_LIST_HEAD(&desc->tx_list);
 dma_async_tx_descriptor_init(&desc->async_tx, &chan->chan);

 desc->async_tx.tx_submit = mmp_pdma_tx_submit;
 desc->async_tx.phys = pdesc;

 return desc;
}
