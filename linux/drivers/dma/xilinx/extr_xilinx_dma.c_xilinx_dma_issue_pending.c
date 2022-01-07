
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_chan {int lock; int (* start_transfer ) (struct xilinx_dma_chan*) ;} ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xilinx_dma_chan*) ;
 struct xilinx_dma_chan* to_xilinx_chan (struct dma_chan*) ;

__attribute__((used)) static void xilinx_dma_issue_pending(struct dma_chan *dchan)
{
 struct xilinx_dma_chan *chan = to_xilinx_chan(dchan);
 unsigned long flags;

 spin_lock_irqsave(&chan->lock, flags);
 chan->start_transfer(chan);
 spin_unlock_irqrestore(&chan->lock, flags);
}
