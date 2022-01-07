
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct sprd_dma_chn {TYPE_1__ vc; int cur_desc; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_dma_start (struct sprd_dma_chn*) ;
 struct sprd_dma_chn* to_sprd_dma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void sprd_dma_issue_pending(struct dma_chan *chan)
{
 struct sprd_dma_chn *schan = to_sprd_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&schan->vc.lock, flags);
 if (vchan_issue_pending(&schan->vc) && !schan->cur_desc)
  sprd_dma_start(schan);
 spin_unlock_irqrestore(&schan->vc.lock, flags);
}
