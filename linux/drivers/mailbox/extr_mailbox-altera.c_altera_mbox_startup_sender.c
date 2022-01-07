
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
struct altera_mbox {int dev; int irq; scalar_t__ intr_mode; } ;


 int DRIVER_NAME ;
 int altera_mbox_tx_interrupt ;
 int dev_err (int ,char*,int) ;
 struct altera_mbox* mbox_chan_to_altera_mbox (struct mbox_chan*) ;
 int request_irq (int ,int ,int ,int ,struct mbox_chan*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int altera_mbox_startup_sender(struct mbox_chan *chan)
{
 int ret;
 struct altera_mbox *mbox = mbox_chan_to_altera_mbox(chan);

 if (mbox->intr_mode) {
  ret = request_irq(mbox->irq, altera_mbox_tx_interrupt, 0,
      DRIVER_NAME, chan);
  if (unlikely(ret)) {
   dev_err(mbox->dev,
    "failed to register mailbox interrupt:%d\n",
    ret);
   return ret;
  }
 }

 return 0;
}
