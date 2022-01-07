
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long flags; int tx_submit; } ;
struct ccp_dma_desc {int status; int active; int pending; TYPE_1__* ccp; TYPE_2__ tx_desc; } ;
struct ccp_dma_chan {TYPE_1__* ccp; int dma_chan; } ;
struct TYPE_3__ {int dma_desc_cache; } ;


 int DMA_IN_PROGRESS ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int ccp_tx_submit ;
 int dma_async_tx_descriptor_init (TYPE_2__*,int *) ;
 struct ccp_dma_desc* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct ccp_dma_desc *ccp_alloc_dma_desc(struct ccp_dma_chan *chan,
            unsigned long flags)
{
 struct ccp_dma_desc *desc;

 desc = kmem_cache_zalloc(chan->ccp->dma_desc_cache, GFP_NOWAIT);
 if (!desc)
  return ((void*)0);

 dma_async_tx_descriptor_init(&desc->tx_desc, &chan->dma_chan);
 desc->tx_desc.flags = flags;
 desc->tx_desc.tx_submit = ccp_tx_submit;
 desc->ccp = chan->ccp;
 INIT_LIST_HEAD(&desc->pending);
 INIT_LIST_HEAD(&desc->active);
 desc->status = DMA_IN_PROGRESS;

 return desc;
}
