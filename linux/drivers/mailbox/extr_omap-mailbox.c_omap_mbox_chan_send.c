
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox {int dummy; } ;


 int EBUSY ;
 int IRQ_TX ;
 int _omap_mbox_enable_irq (struct omap_mbox*,int ) ;
 int mbox_fifo_full (struct omap_mbox*) ;
 int mbox_fifo_write (struct omap_mbox*,int ) ;

__attribute__((used)) static int omap_mbox_chan_send(struct omap_mbox *mbox, u32 msg)
{
 int ret = -EBUSY;

 if (!mbox_fifo_full(mbox)) {
  mbox_fifo_write(mbox, msg);
  ret = 0;
 }


 _omap_mbox_enable_irq(mbox, IRQ_TX);
 return ret;
}
