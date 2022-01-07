
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_RX ;
 int IRQ_TX ;
 int __mbox_rx_interrupt (struct omap_mbox*) ;
 int __mbox_tx_interrupt (struct omap_mbox*) ;
 scalar_t__ is_mbox_irq (struct omap_mbox*,int ) ;

__attribute__((used)) static irqreturn_t mbox_interrupt(int irq, void *p)
{
 struct omap_mbox *mbox = p;

 if (is_mbox_irq(mbox, IRQ_TX))
  __mbox_tx_interrupt(mbox);

 if (is_mbox_irq(mbox, IRQ_RX))
  __mbox_rx_interrupt(mbox);

 return IRQ_HANDLED;
}
