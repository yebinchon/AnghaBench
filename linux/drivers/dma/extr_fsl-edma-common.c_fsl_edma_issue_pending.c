
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct fsl_edma_chan {scalar_t__ pm_state; TYPE_1__ vchan; int edesc; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ RUNNING ;
 int fsl_edma_xfer_desc (struct fsl_edma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fsl_edma_chan* to_fsl_edma_chan (struct dma_chan*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

void fsl_edma_issue_pending(struct dma_chan *chan)
{
 struct fsl_edma_chan *fsl_chan = to_fsl_edma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&fsl_chan->vchan.lock, flags);

 if (unlikely(fsl_chan->pm_state != RUNNING)) {
  spin_unlock_irqrestore(&fsl_chan->vchan.lock, flags);

  return;
 }

 if (vchan_issue_pending(&fsl_chan->vchan) && !fsl_chan->edesc)
  fsl_edma_xfer_desc(fsl_chan);

 spin_unlock_irqrestore(&fsl_chan->vchan.lock, flags);
}
