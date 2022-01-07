
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct mdc_chan {TYPE_1__ vc; int desc; } ;
struct dma_chan {int dummy; } ;


 int mdc_issue_desc (struct mdc_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdc_chan* to_mdc_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void mdc_issue_pending(struct dma_chan *chan)
{
 struct mdc_chan *mchan = to_mdc_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&mchan->vc.lock, flags);
 if (vchan_issue_pending(&mchan->vc) && !mchan->desc)
  mdc_issue_desc(mchan);
 spin_unlock_irqrestore(&mchan->vc.lock, flags);
}
