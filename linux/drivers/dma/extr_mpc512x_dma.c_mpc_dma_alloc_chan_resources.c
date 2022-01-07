
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mpc_dma_tcd {int dummy; } ;
struct TYPE_6__ {int tx_submit; int flags; } ;
struct mpc_dma_desc {int node; void* tcd_paddr; struct mpc_dma_tcd* tcd; TYPE_3__ desc; } ;
struct mpc_dma_chan {int lock; int free; void* tcd_paddr; struct mpc_dma_tcd* tcd; } ;
struct TYPE_4__ {int dev; } ;
struct mpc_dma {TYPE_2__* regs; TYPE_1__ dma; } ;
struct dma_chan {int chan_id; } ;
typedef void* dma_addr_t ;
struct TYPE_5__ {int dmaseei; } ;


 int DMA_CTRL_ACK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LIST_HEAD (int ) ;
 int MPC_DMA_DESCRIPTORS ;
 int descs ;
 int dev_notice (int ,char*,int) ;
 struct mpc_dma_tcd* dma_alloc_coherent (int ,int,void**,int ) ;
 int dma_async_tx_descriptor_init (TYPE_3__*,struct dma_chan*) ;
 struct mpc_dma* dma_chan_to_mpc_dma (struct dma_chan*) ;
 struct mpc_dma_chan* dma_chan_to_mpc_dma_chan (struct dma_chan*) ;
 int dma_free_coherent (int ,int,struct mpc_dma_tcd*,void*) ;
 struct mpc_dma_desc* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_splice_tail_init (int *,int *) ;
 int mpc_dma_tx_submit ;
 int out_8 (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mpc_dma_alloc_chan_resources(struct dma_chan *chan)
{
 struct mpc_dma *mdma = dma_chan_to_mpc_dma(chan);
 struct mpc_dma_chan *mchan = dma_chan_to_mpc_dma_chan(chan);
 struct mpc_dma_desc *mdesc;
 struct mpc_dma_tcd *tcd;
 dma_addr_t tcd_paddr;
 unsigned long flags;
 LIST_HEAD(descs);
 int i;


 tcd = dma_alloc_coherent(mdma->dma.dev,
   MPC_DMA_DESCRIPTORS * sizeof(struct mpc_dma_tcd),
       &tcd_paddr, GFP_KERNEL);
 if (!tcd)
  return -ENOMEM;


 for (i = 0; i < MPC_DMA_DESCRIPTORS; i++) {
  mdesc = kzalloc(sizeof(struct mpc_dma_desc), GFP_KERNEL);
  if (!mdesc) {
   dev_notice(mdma->dma.dev,
    "Memory allocation error. Allocated only %u descriptors\n", i);
   break;
  }

  dma_async_tx_descriptor_init(&mdesc->desc, chan);
  mdesc->desc.flags = DMA_CTRL_ACK;
  mdesc->desc.tx_submit = mpc_dma_tx_submit;

  mdesc->tcd = &tcd[i];
  mdesc->tcd_paddr = tcd_paddr + (i * sizeof(struct mpc_dma_tcd));

  list_add_tail(&mdesc->node, &descs);
 }


 if (i == 0) {
  dma_free_coherent(mdma->dma.dev,
   MPC_DMA_DESCRIPTORS * sizeof(struct mpc_dma_tcd),
        tcd, tcd_paddr);
  return -ENOMEM;
 }

 spin_lock_irqsave(&mchan->lock, flags);
 mchan->tcd = tcd;
 mchan->tcd_paddr = tcd_paddr;
 list_splice_tail_init(&descs, &mchan->free);
 spin_unlock_irqrestore(&mchan->lock, flags);


 out_8(&mdma->regs->dmaseei, chan->chan_id);

 return 0;
}
