
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mbox_queue {struct omap_mbox* mbox; } ;
struct omap_mbox {struct omap_mbox_queue* rxq; TYPE_1__* chan; scalar_t__ send_no_irq; int name; int irq; } ;
struct TYPE_2__ {int txdone_method; } ;


 int ENOMEM ;
 int IRQF_SHARED ;
 int IRQ_RX ;
 int TXDONE_BY_ACK ;
 int _omap_mbox_enable_irq (struct omap_mbox*,int ) ;
 int mbox_interrupt ;
 struct omap_mbox_queue* mbox_queue_alloc (struct omap_mbox*,int ) ;
 int mbox_queue_free (struct omap_mbox_queue*) ;
 int mbox_rx_work ;
 int pr_err (char*,int) ;
 int request_irq (int ,int ,int ,int ,struct omap_mbox*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_mbox_startup(struct omap_mbox *mbox)
{
 int ret = 0;
 struct omap_mbox_queue *mq;

 mq = mbox_queue_alloc(mbox, mbox_rx_work);
 if (!mq)
  return -ENOMEM;
 mbox->rxq = mq;
 mq->mbox = mbox;

 ret = request_irq(mbox->irq, mbox_interrupt, IRQF_SHARED,
     mbox->name, mbox);
 if (unlikely(ret)) {
  pr_err("failed to register mailbox interrupt:%d\n", ret);
  goto fail_request_irq;
 }

 if (mbox->send_no_irq)
  mbox->chan->txdone_method = TXDONE_BY_ACK;

 _omap_mbox_enable_irq(mbox, IRQ_RX);

 return 0;

fail_request_irq:
 mbox_queue_free(mbox->rxq);
 return ret;
}
