
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct pl08x_dma_chan {TYPE_1__ vc; int state; int phychan; int at; } ;
struct dma_chan {int dummy; } ;


 int PL08X_CHAN_RUNNING ;
 int pl08x_resume_phy_chan (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pl08x_dma_chan* to_pl08x_chan (struct dma_chan*) ;

__attribute__((used)) static int pl08x_resume(struct dma_chan *chan)
{
 struct pl08x_dma_chan *plchan = to_pl08x_chan(chan);
 unsigned long flags;





 spin_lock_irqsave(&plchan->vc.lock, flags);
 if (!plchan->phychan && !plchan->at) {
  spin_unlock_irqrestore(&plchan->vc.lock, flags);
  return 0;
 }

 pl08x_resume_phy_chan(plchan->phychan);
 plchan->state = PL08X_CHAN_RUNNING;

 spin_unlock_irqrestore(&plchan->vc.lock, flags);

 return 0;
}
