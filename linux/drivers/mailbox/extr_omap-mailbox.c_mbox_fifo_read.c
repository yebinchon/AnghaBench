
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox_fifo {int msg; } ;
struct omap_mbox {int parent; struct omap_mbox_fifo rx_fifo; } ;


 int mbox_read_reg (int ,int ) ;

__attribute__((used)) static u32 mbox_fifo_read(struct omap_mbox *mbox)
{
 struct omap_mbox_fifo *fifo = &mbox->rx_fifo;

 return mbox_read_reg(mbox->parent, fifo->msg);
}
