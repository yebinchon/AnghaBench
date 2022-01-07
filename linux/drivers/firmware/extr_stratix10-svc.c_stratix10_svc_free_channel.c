
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stratix10_svc_chan {int lock; TYPE_3__* ctrl; int * scl; } ;
struct TYPE_6__ {TYPE_2__* dev; int num_active_client; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int module_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void stratix10_svc_free_channel(struct stratix10_svc_chan *chan)
{
 unsigned long flag;

 spin_lock_irqsave(&chan->lock, flag);
 chan->scl = ((void*)0);
 chan->ctrl->num_active_client--;
 module_put(chan->ctrl->dev->driver->owner);
 spin_unlock_irqrestore(&chan->lock, flag);
}
