
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slimpro_mbox_chan {int rx_msg; int chan; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ mb_chan_status_ack (struct slimpro_mbox_chan*) ;
 scalar_t__ mb_chan_status_avail (struct slimpro_mbox_chan*) ;
 int mbox_chan_received_data (int ,int ) ;
 int mbox_chan_txdone (int ,int ) ;

__attribute__((used)) static irqreturn_t slimpro_mbox_irq(int irq, void *id)
{
 struct slimpro_mbox_chan *mb_chan = id;

 if (mb_chan_status_ack(mb_chan))
  mbox_chan_txdone(mb_chan->chan, 0);

 if (mb_chan_status_avail(mb_chan))
  mbox_chan_received_data(mb_chan->chan, mb_chan->rx_msg);

 return IRQ_HANDLED;
}
