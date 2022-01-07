
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pl08x_driver_data {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct pl08x_dma_chan {TYPE_2__ vc; TYPE_1__* at; scalar_t__ phychan; int state; struct pl08x_driver_data* host; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int vd; } ;


 int PL08X_CHAN_IDLE ;
 int pl08x_free_txd_list (struct pl08x_driver_data*,struct pl08x_dma_chan*) ;
 int pl08x_phy_free (struct pl08x_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pl08x_dma_chan* to_pl08x_chan (struct dma_chan*) ;
 int vchan_terminate_vdesc (int *) ;

__attribute__((used)) static int pl08x_terminate_all(struct dma_chan *chan)
{
 struct pl08x_dma_chan *plchan = to_pl08x_chan(chan);
 struct pl08x_driver_data *pl08x = plchan->host;
 unsigned long flags;

 spin_lock_irqsave(&plchan->vc.lock, flags);
 if (!plchan->phychan && !plchan->at) {
  spin_unlock_irqrestore(&plchan->vc.lock, flags);
  return 0;
 }

 plchan->state = PL08X_CHAN_IDLE;

 if (plchan->phychan) {




  pl08x_phy_free(plchan);
 }

 if (plchan->at) {
  vchan_terminate_vdesc(&plchan->at->vd);
  plchan->at = ((void*)0);
 }

 pl08x_free_txd_list(pl08x, plchan);

 spin_unlock_irqrestore(&plchan->vc.lock, flags);

 return 0;
}
