
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct fsl_edma_chan {int idle; TYPE_1__ vchan; int status; scalar_t__ edesc; } ;
struct dma_chan {int dummy; } ;


 int DMA_PAUSED ;
 int fsl_edma_disable_request (struct fsl_edma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fsl_edma_chan* to_fsl_edma_chan (struct dma_chan*) ;

int fsl_edma_pause(struct dma_chan *chan)
{
 struct fsl_edma_chan *fsl_chan = to_fsl_edma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&fsl_chan->vchan.lock, flags);
 if (fsl_chan->edesc) {
  fsl_edma_disable_request(fsl_chan);
  fsl_chan->status = DMA_PAUSED;
  fsl_chan->idle = 1;
 }
 spin_unlock_irqrestore(&fsl_chan->vchan.lock, flags);
 return 0;
}
