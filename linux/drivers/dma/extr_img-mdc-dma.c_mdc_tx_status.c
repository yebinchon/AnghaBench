
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct virt_dma_desc {int tx; } ;
struct TYPE_4__ {scalar_t__ cookie; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct mdc_tx_desc {size_t list_xfer_size; struct mdc_hw_list_desc* list; scalar_t__ list_cmds_done; int cmd_loaded; TYPE_2__ vd; } ;
struct mdc_hw_list_desc {int xfer_size; struct mdc_hw_list_desc* next_desc; } ;
struct TYPE_6__ {int lock; } ;
struct mdc_chan {TYPE_3__ vc; struct mdc_tx_desc* desc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef scalar_t__ dma_cookie_t ;


 int DMA_COMPLETE ;
 int MDC_ACTIVE_TRANSFER_SIZE ;
 int MDC_CMDS_PROCESSED ;
 int MDC_CMDS_PROCESSED_CMDS_DONE_MASK ;
 int MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT ;
 int MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK ;
 int MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT ;
 int MDC_CMDS_PROCESSED_INT_ACTIVE ;
 int MDC_TRANSFER_SIZE_MASK ;
 int dma_cookie_status (struct dma_chan*,scalar_t__,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,size_t) ;
 int mdc_chan_readl (struct mdc_chan*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdc_chan* to_mdc_chan (struct dma_chan*) ;
 struct mdc_tx_desc* to_mdc_desc (int *) ;
 struct virt_dma_desc* vchan_find_desc (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static enum dma_status mdc_tx_status(struct dma_chan *chan,
 dma_cookie_t cookie, struct dma_tx_state *txstate)
{
 struct mdc_chan *mchan = to_mdc_chan(chan);
 struct mdc_tx_desc *mdesc;
 struct virt_dma_desc *vd;
 unsigned long flags;
 size_t bytes = 0;
 int ret;

 ret = dma_cookie_status(chan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 if (!txstate)
  return ret;

 spin_lock_irqsave(&mchan->vc.lock, flags);
 vd = vchan_find_desc(&mchan->vc, cookie);
 if (vd) {
  mdesc = to_mdc_desc(&vd->tx);
  bytes = mdesc->list_xfer_size;
 } else if (mchan->desc && mchan->desc->vd.tx.cookie == cookie) {
  struct mdc_hw_list_desc *ldesc;
  u32 val1, val2, done, processed, residue;
  int i, cmds;

  mdesc = mchan->desc;





  do {
   val1 = mdc_chan_readl(mchan, MDC_CMDS_PROCESSED) &
    ~MDC_CMDS_PROCESSED_INT_ACTIVE;
   residue = mdc_chan_readl(mchan,
       MDC_ACTIVE_TRANSFER_SIZE);
   val2 = mdc_chan_readl(mchan, MDC_CMDS_PROCESSED) &
    ~MDC_CMDS_PROCESSED_INT_ACTIVE;
  } while (val1 != val2);

  done = (val1 >> MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT) &
   MDC_CMDS_PROCESSED_CMDS_DONE_MASK;
  processed = (val1 >> MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT) &
   MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK;
  cmds = (done - processed) %
   (MDC_CMDS_PROCESSED_CMDS_DONE_MASK + 1);





  if (!mdesc->cmd_loaded)
   cmds--;
  else
   cmds += mdesc->list_cmds_done;

  bytes = mdesc->list_xfer_size;
  ldesc = mdesc->list;
  for (i = 0; i < cmds; i++) {
   bytes -= ldesc->xfer_size + 1;
   ldesc = ldesc->next_desc;
  }
  if (ldesc) {
   if (residue != MDC_TRANSFER_SIZE_MASK)
    bytes -= ldesc->xfer_size - residue;
   else
    bytes -= ldesc->xfer_size + 1;
  }
 }
 spin_unlock_irqrestore(&mchan->vc.lock, flags);

 dma_set_residue(txstate, bytes);

 return ret;
}
