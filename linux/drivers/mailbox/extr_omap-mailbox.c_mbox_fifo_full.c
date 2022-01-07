
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_fifo {int fifo_stat; } ;
struct omap_mbox {int parent; struct omap_mbox_fifo tx_fifo; } ;


 int mbox_read_reg (int ,int ) ;

__attribute__((used)) static int mbox_fifo_full(struct omap_mbox *mbox)
{
 struct omap_mbox_fifo *fifo = &mbox->tx_fifo;

 return mbox_read_reg(mbox->parent, fifo->fifo_stat);
}
