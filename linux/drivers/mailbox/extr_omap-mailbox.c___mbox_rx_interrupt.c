
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox_queue {int full; int work; int fifo; } ;
struct omap_mbox {struct omap_mbox_queue* rxq; } ;
typedef int msg ;


 int IRQ_RX ;
 int WARN_ON (int) ;
 int _omap_mbox_disable_irq (struct omap_mbox*,int ) ;
 int ack_mbox_irq (struct omap_mbox*,int ) ;
 int kfifo_avail (int *) ;
 int kfifo_in (int *,unsigned char*,int) ;
 int mbox_fifo_empty (struct omap_mbox*) ;
 int mbox_fifo_read (struct omap_mbox*) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __mbox_rx_interrupt(struct omap_mbox *mbox)
{
 struct omap_mbox_queue *mq = mbox->rxq;
 u32 msg;
 int len;

 while (!mbox_fifo_empty(mbox)) {
  if (unlikely(kfifo_avail(&mq->fifo) < sizeof(msg))) {
   _omap_mbox_disable_irq(mbox, IRQ_RX);
   mq->full = 1;
   goto nomem;
  }

  msg = mbox_fifo_read(mbox);

  len = kfifo_in(&mq->fifo, (unsigned char *)&msg, sizeof(msg));
  WARN_ON(len != sizeof(msg));
 }


 ack_mbox_irq(mbox, IRQ_RX);
nomem:
 schedule_work(&mbox->rxq->work);
}
