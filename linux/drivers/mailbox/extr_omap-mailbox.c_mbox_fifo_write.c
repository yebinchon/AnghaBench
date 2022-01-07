
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox_fifo {int msg; } ;
struct omap_mbox {int parent; struct omap_mbox_fifo tx_fifo; } ;


 int mbox_write_reg (int ,int ,int ) ;

__attribute__((used)) static void mbox_fifo_write(struct omap_mbox *mbox, u32 msg)
{
 struct omap_mbox_fifo *fifo = &mbox->tx_fifo;

 mbox_write_reg(mbox->parent, msg, fifo->msg);
}
