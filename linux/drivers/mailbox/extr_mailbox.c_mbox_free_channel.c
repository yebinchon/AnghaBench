
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mbox_chan {scalar_t__ txdone_method; int lock; TYPE_3__* mbox; int * active_req; int * cl; } ;
struct TYPE_8__ {int (* shutdown ) (struct mbox_chan*) ;} ;
struct TYPE_7__ {TYPE_2__* dev; TYPE_4__* ops; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {int owner; } ;


 scalar_t__ TXDONE_BY_ACK ;
 scalar_t__ TXDONE_BY_POLL ;
 int module_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mbox_chan*) ;

void mbox_free_channel(struct mbox_chan *chan)
{
 unsigned long flags;

 if (!chan || !chan->cl)
  return;

 if (chan->mbox->ops->shutdown)
  chan->mbox->ops->shutdown(chan);


 spin_lock_irqsave(&chan->lock, flags);
 chan->cl = ((void*)0);
 chan->active_req = ((void*)0);
 if (chan->txdone_method == TXDONE_BY_ACK)
  chan->txdone_method = TXDONE_BY_POLL;

 module_put(chan->mbox->dev->driver->owner);
 spin_unlock_irqrestore(&chan->lock, flags);
}
