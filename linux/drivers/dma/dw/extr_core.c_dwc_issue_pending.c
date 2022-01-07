
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int lock; int active_list; } ;
struct dma_chan {int dummy; } ;


 int dwc_dostart_first_queued (struct dw_dma_chan*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

__attribute__((used)) static void dwc_issue_pending(struct dma_chan *chan)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&dwc->lock, flags);
 if (list_empty(&dwc->active_list))
  dwc_dostart_first_queued(dwc);
 spin_unlock_irqrestore(&dwc->lock, flags);
}
