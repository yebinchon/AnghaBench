
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct owl_dma_vchan {TYPE_1__ vc; int pchan; } ;
struct dma_chan {int dummy; } ;


 int owl_dma_phy_alloc_and_start (struct owl_dma_vchan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct owl_dma_vchan* to_owl_vchan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void owl_dma_issue_pending(struct dma_chan *chan)
{
 struct owl_dma_vchan *vchan = to_owl_vchan(chan);
 unsigned long flags;

 spin_lock_irqsave(&vchan->vc.lock, flags);
 if (vchan_issue_pending(&vchan->vc)) {
  if (!vchan->pchan)
   owl_dma_phy_alloc_and_start(vchan);
 }
 spin_unlock_irqrestore(&vchan->vc.lock, flags);
}
