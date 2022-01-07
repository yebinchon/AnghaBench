
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox {int dummy; } ;


 int EBUSY ;
 int IRQ_RX ;
 int _omap_mbox_disable_irq (struct omap_mbox*,int ) ;
 int _omap_mbox_enable_irq (struct omap_mbox*,int ) ;
 int ack_mbox_irq (struct omap_mbox*,int ) ;
 int mbox_fifo_full (struct omap_mbox*) ;
 int mbox_fifo_read (struct omap_mbox*) ;
 int mbox_fifo_write (struct omap_mbox*,int ) ;

__attribute__((used)) static int omap_mbox_chan_send_noirq(struct omap_mbox *mbox, u32 msg)
{
 int ret = -EBUSY;

 if (!mbox_fifo_full(mbox)) {
  _omap_mbox_enable_irq(mbox, IRQ_RX);
  mbox_fifo_write(mbox, msg);
  ret = 0;
  _omap_mbox_disable_irq(mbox, IRQ_RX);


  mbox_fifo_read(mbox);
  ack_mbox_irq(mbox, IRQ_RX);
 }

 return ret;
}
