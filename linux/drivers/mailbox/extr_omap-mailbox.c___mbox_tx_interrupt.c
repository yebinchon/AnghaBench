
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int chan; } ;


 int IRQ_TX ;
 int _omap_mbox_disable_irq (struct omap_mbox*,int ) ;
 int ack_mbox_irq (struct omap_mbox*,int ) ;
 int mbox_chan_txdone (int ,int ) ;

__attribute__((used)) static void __mbox_tx_interrupt(struct omap_mbox *mbox)
{
 _omap_mbox_disable_irq(mbox, IRQ_TX);
 ack_mbox_irq(mbox, IRQ_TX);
 mbox_chan_txdone(mbox->chan, 0);
}
