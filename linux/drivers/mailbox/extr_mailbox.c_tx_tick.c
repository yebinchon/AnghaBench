
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbox_chan {int tx_complete; TYPE_1__* cl; int lock; int * active_req; } ;
struct TYPE_2__ {scalar_t__ tx_block; int (* tx_done ) (TYPE_1__*,void*,int) ;} ;


 int ETIME ;
 int complete (int *) ;
 int msg_submit (struct mbox_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,void*,int) ;

__attribute__((used)) static void tx_tick(struct mbox_chan *chan, int r)
{
 unsigned long flags;
 void *mssg;

 spin_lock_irqsave(&chan->lock, flags);
 mssg = chan->active_req;
 chan->active_req = ((void*)0);
 spin_unlock_irqrestore(&chan->lock, flags);


 msg_submit(chan);

 if (!mssg)
  return;


 if (chan->cl->tx_done)
  chan->cl->tx_done(chan->cl, mssg, r);

 if (r != -ETIME && chan->cl->tx_block)
  complete(&chan->tx_complete);
}
