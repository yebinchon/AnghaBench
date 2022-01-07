
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int lock; } ;
struct dma_chan {int dummy; } ;


 int dwc_chan_pause (struct dw_dma_chan*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int dwc_pause(struct dma_chan *chan)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&dwc->lock, flags);
 dwc_chan_pause(dwc, 0);
 spin_unlock_irqrestore(&dwc->lock, flags);

 return 0;
}
