
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_chan {int lock; int active_list; int done_list; int pending_list; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xilinx_dma_free_desc_list (struct xilinx_dma_chan*,int *) ;

__attribute__((used)) static void xilinx_dma_free_descriptors(struct xilinx_dma_chan *chan)
{
 unsigned long flags;

 spin_lock_irqsave(&chan->lock, flags);

 xilinx_dma_free_desc_list(chan, &chan->pending_list);
 xilinx_dma_free_desc_list(chan, &chan->done_list);
 xilinx_dma_free_desc_list(chan, &chan->active_list);

 spin_unlock_irqrestore(&chan->lock, flags);
}
