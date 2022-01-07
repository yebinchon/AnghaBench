
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_edma_engine {int n_chans; struct fsl_edma_chan* chans; } ;
struct TYPE_2__ {int lock; } ;
struct fsl_edma_chan {TYPE_1__ vchan; int pm_state; int idle; } ;
struct device {int dummy; } ;


 int SUSPENDED ;
 struct fsl_edma_engine* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int fsl_edma_chan_mux (struct fsl_edma_chan*,int ,int) ;
 int fsl_edma_disable_request (struct fsl_edma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fsl_edma_suspend_late(struct device *dev)
{
 struct fsl_edma_engine *fsl_edma = dev_get_drvdata(dev);
 struct fsl_edma_chan *fsl_chan;
 unsigned long flags;
 int i;

 for (i = 0; i < fsl_edma->n_chans; i++) {
  fsl_chan = &fsl_edma->chans[i];
  spin_lock_irqsave(&fsl_chan->vchan.lock, flags);

  if (unlikely(!fsl_chan->idle)) {
   dev_warn(dev, "WARN: There is non-idle channel.");
   fsl_edma_disable_request(fsl_chan);
   fsl_edma_chan_mux(fsl_chan, 0, 0);
  }

  fsl_chan->pm_state = SUSPENDED;
  spin_unlock_irqrestore(&fsl_chan->vchan.lock, flags);
 }

 return 0;
}
