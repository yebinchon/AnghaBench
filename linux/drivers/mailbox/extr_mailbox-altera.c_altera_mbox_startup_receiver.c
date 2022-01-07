
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
struct altera_mbox {int intr_mode; int rxpoll_timer; struct mbox_chan* chan; int irq; } ;


 int DRIVER_NAME ;
 int MBOX_POLLING_MS ;
 int altera_mbox_poll_rx ;
 int altera_mbox_rx_interrupt ;
 int altera_mbox_rx_intmask (struct altera_mbox*,int) ;
 scalar_t__ jiffies ;
 struct altera_mbox* mbox_chan_to_altera_mbox (struct mbox_chan*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int request_irq (int ,int ,int ,int ,struct mbox_chan*) ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int altera_mbox_startup_receiver(struct mbox_chan *chan)
{
 int ret;
 struct altera_mbox *mbox = mbox_chan_to_altera_mbox(chan);

 if (mbox->intr_mode) {
  ret = request_irq(mbox->irq, altera_mbox_rx_interrupt, 0,
      DRIVER_NAME, chan);
  if (unlikely(ret)) {
   mbox->intr_mode = 0;
   goto polling;
  }

  altera_mbox_rx_intmask(mbox, 1);
  return 0;
 }

polling:

 mbox->chan = chan;
 timer_setup(&mbox->rxpoll_timer, altera_mbox_poll_rx, 0);
 mod_timer(&mbox->rxpoll_timer,
    jiffies + msecs_to_jiffies(MBOX_POLLING_MS));

 return 0;
}
