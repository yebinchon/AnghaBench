
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
struct altera_mbox {int rxpoll_timer; int is_sender; int irq; scalar_t__ mbox_base; scalar_t__ intr_mode; } ;


 scalar_t__ MAILBOX_INTMASK_REG ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct mbox_chan*) ;
 struct altera_mbox* mbox_chan_to_altera_mbox (struct mbox_chan*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void altera_mbox_shutdown(struct mbox_chan *chan)
{
 struct altera_mbox *mbox = mbox_chan_to_altera_mbox(chan);

 if (mbox->intr_mode) {

  writel_relaxed(~0, mbox->mbox_base + MAILBOX_INTMASK_REG);
  free_irq(mbox->irq, chan);
 } else if (!mbox->is_sender) {
  del_timer_sync(&mbox->rxpoll_timer);
 }
}
