
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct edma_chan {TYPE_1__ vchan; int edesc; } ;
struct dma_chan {int dummy; } ;


 int edma_execute (struct edma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct edma_chan* to_edma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void edma_issue_pending(struct dma_chan *chan)
{
 struct edma_chan *echan = to_edma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&echan->vchan.lock, flags);
 if (vchan_issue_pending(&echan->vchan) && !echan->edesc)
  edma_execute(echan);
 spin_unlock_irqrestore(&echan->vchan.lock, flags);
}
