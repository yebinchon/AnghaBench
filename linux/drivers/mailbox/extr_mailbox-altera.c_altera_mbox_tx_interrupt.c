
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
struct altera_mbox {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int altera_mbox_tx_intmask (struct altera_mbox*,int) ;
 struct altera_mbox* mbox_chan_to_altera_mbox (struct mbox_chan*) ;
 int mbox_chan_txdone (struct mbox_chan*,int ) ;

__attribute__((used)) static irqreturn_t altera_mbox_tx_interrupt(int irq, void *p)
{
 struct mbox_chan *chan = (struct mbox_chan *)p;
 struct altera_mbox *mbox = mbox_chan_to_altera_mbox(chan);

 altera_mbox_tx_intmask(mbox, 0);
 mbox_chan_txdone(chan, 0);

 return IRQ_HANDLED;
}
