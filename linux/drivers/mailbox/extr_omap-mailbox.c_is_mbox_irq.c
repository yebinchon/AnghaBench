
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox_fifo {int intr_bit; int irqenable; int irqstatus; } ;
struct omap_mbox {int parent; struct omap_mbox_fifo rx_fifo; struct omap_mbox_fifo tx_fifo; } ;
typedef scalar_t__ omap_mbox_irq_t ;


 scalar_t__ IRQ_TX ;
 int mbox_read_reg (int ,int) ;

__attribute__((used)) static int is_mbox_irq(struct omap_mbox *mbox, omap_mbox_irq_t irq)
{
 struct omap_mbox_fifo *fifo = (irq == IRQ_TX) ?
    &mbox->tx_fifo : &mbox->rx_fifo;
 u32 bit = fifo->intr_bit;
 u32 irqenable = fifo->irqenable;
 u32 irqstatus = fifo->irqstatus;

 u32 enable = mbox_read_reg(mbox->parent, irqenable);
 u32 status = mbox_read_reg(mbox->parent, irqstatus);

 return (int)(enable & status & bit);
}
