
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_chan {int lock; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zynqmp_dma_chan* to_chan (struct dma_chan*) ;
 int zynqmp_dma_start_transfer (struct zynqmp_dma_chan*) ;

__attribute__((used)) static void zynqmp_dma_issue_pending(struct dma_chan *dchan)
{
 struct zynqmp_dma_chan *chan = to_chan(dchan);
 unsigned long irqflags;

 spin_lock_irqsave(&chan->lock, irqflags);
 zynqmp_dma_start_transfer(chan);
 spin_unlock_irqrestore(&chan->lock, irqflags);
}
