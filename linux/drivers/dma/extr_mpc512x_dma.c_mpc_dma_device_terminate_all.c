
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc_dma_chan {int lock; int free; int active; int queued; int prepared; } ;
struct mpc_dma {TYPE_1__* regs; } ;
struct dma_chan {int chan_id; } ;
struct TYPE_2__ {int dmacerq; } ;


 struct mpc_dma* dma_chan_to_mpc_dma (struct dma_chan*) ;
 struct mpc_dma_chan* dma_chan_to_mpc_dma_chan (struct dma_chan*) ;
 int list_splice_tail_init (int *,int *) ;
 int out_8 (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mpc_dma_device_terminate_all(struct dma_chan *chan)
{
 struct mpc_dma_chan *mchan = dma_chan_to_mpc_dma_chan(chan);
 struct mpc_dma *mdma = dma_chan_to_mpc_dma(chan);
 unsigned long flags;


 spin_lock_irqsave(&mchan->lock, flags);

 out_8(&mdma->regs->dmacerq, chan->chan_id);
 list_splice_tail_init(&mchan->prepared, &mchan->free);
 list_splice_tail_init(&mchan->queued, &mchan->free);
 list_splice_tail_init(&mchan->active, &mchan->free);

 spin_unlock_irqrestore(&mchan->lock, flags);

 return 0;
}
