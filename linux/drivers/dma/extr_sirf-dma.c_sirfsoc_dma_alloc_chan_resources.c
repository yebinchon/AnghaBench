
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx_submit; int flags; } ;
struct sirfsoc_dma_desc {int node; TYPE_2__ desc; } ;
struct sirfsoc_dma_chan {int lock; int free; } ;
struct TYPE_3__ {int dev; } ;
struct sirfsoc_dma {TYPE_1__ dma; } ;
struct dma_chan {int dummy; } ;


 int DMA_CTRL_ACK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LIST_HEAD (int ) ;
 int SIRFSOC_DMA_DESCRIPTORS ;
 int descs ;
 int dev_notice (int ,char*,int) ;
 int dma_async_tx_descriptor_init (TYPE_2__*,struct dma_chan*) ;
 struct sirfsoc_dma* dma_chan_to_sirfsoc_dma (struct dma_chan*) ;
 struct sirfsoc_dma_chan* dma_chan_to_sirfsoc_dma_chan (struct dma_chan*) ;
 struct sirfsoc_dma_desc* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_splice_tail_init (int *,int *) ;
 int pm_runtime_get_sync (int ) ;
 int sirfsoc_dma_tx_submit ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sirfsoc_dma_alloc_chan_resources(struct dma_chan *chan)
{
 struct sirfsoc_dma *sdma = dma_chan_to_sirfsoc_dma(chan);
 struct sirfsoc_dma_chan *schan = dma_chan_to_sirfsoc_dma_chan(chan);
 struct sirfsoc_dma_desc *sdesc;
 unsigned long flags;
 LIST_HEAD(descs);
 int i;

 pm_runtime_get_sync(sdma->dma.dev);


 for (i = 0; i < SIRFSOC_DMA_DESCRIPTORS; i++) {
  sdesc = kzalloc(sizeof(*sdesc), GFP_KERNEL);
  if (!sdesc) {
   dev_notice(sdma->dma.dev, "Memory allocation error. "
    "Allocated only %u descriptors\n", i);
   break;
  }

  dma_async_tx_descriptor_init(&sdesc->desc, chan);
  sdesc->desc.flags = DMA_CTRL_ACK;
  sdesc->desc.tx_submit = sirfsoc_dma_tx_submit;

  list_add_tail(&sdesc->node, &descs);
 }


 if (i == 0)
  return -ENOMEM;

 spin_lock_irqsave(&schan->lock, flags);

 list_splice_tail_init(&descs, &schan->free);
 spin_unlock_irqrestore(&schan->lock, flags);

 return i;
}
