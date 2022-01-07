
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_fifo {int msg_stat; } ;
struct omap_mbox {int parent; struct omap_mbox_fifo rx_fifo; } ;


 scalar_t__ mbox_read_reg (int ,int ) ;

__attribute__((used)) static int mbox_fifo_empty(struct omap_mbox *mbox)
{
 struct omap_mbox_fifo *fifo = &mbox->rx_fifo;

 return (mbox_read_reg(mbox->parent, fifo->msg_stat) == 0);
}
