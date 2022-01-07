
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbox_chan {TYPE_1__* cl; } ;
struct TYPE_2__ {int (* rx_callback ) (TYPE_1__*,void*) ;} ;


 int stub1 (TYPE_1__*,void*) ;

void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
{

 if (chan->cl->rx_callback)
  chan->cl->rx_callback(chan->cl, mssg);
}
