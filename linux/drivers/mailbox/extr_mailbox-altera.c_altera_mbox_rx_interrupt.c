
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int altera_mbox_rx_data (struct mbox_chan*) ;

__attribute__((used)) static irqreturn_t altera_mbox_rx_interrupt(int irq, void *p)
{
 struct mbox_chan *chan = (struct mbox_chan *)p;

 altera_mbox_rx_data(chan);
 return IRQ_HANDLED;
}
