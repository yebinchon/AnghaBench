
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int function; } ;
struct mbox_controller {int num_chans; int node; scalar_t__ of_xlate; struct mbox_chan* chans; TYPE_2__ poll_hrt; int dev; TYPE_1__* ops; scalar_t__ txdone_poll; scalar_t__ txdone_irq; } ;
struct mbox_chan {int txdone_method; int lock; struct mbox_controller* mbox; int * cl; } ;
struct TYPE_3__ {int last_tx_done; } ;


 int CLOCK_MONOTONIC ;
 int EINVAL ;
 int HRTIMER_MODE_REL ;
 int TXDONE_BY_ACK ;
 int TXDONE_BY_IRQ ;
 int TXDONE_BY_POLL ;
 int con_mutex ;
 int dev_err (int ,char*) ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mbox_cons ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ of_mbox_index_xlate ;
 int spin_lock_init (int *) ;
 int txdone_hrtimer ;

int mbox_controller_register(struct mbox_controller *mbox)
{
 int i, txdone;


 if (!mbox || !mbox->dev || !mbox->ops || !mbox->num_chans)
  return -EINVAL;

 if (mbox->txdone_irq)
  txdone = TXDONE_BY_IRQ;
 else if (mbox->txdone_poll)
  txdone = TXDONE_BY_POLL;
 else
  txdone = TXDONE_BY_ACK;

 if (txdone == TXDONE_BY_POLL) {

  if (!mbox->ops->last_tx_done) {
   dev_err(mbox->dev, "last_tx_done method is absent\n");
   return -EINVAL;
  }

  hrtimer_init(&mbox->poll_hrt, CLOCK_MONOTONIC,
        HRTIMER_MODE_REL);
  mbox->poll_hrt.function = txdone_hrtimer;
 }

 for (i = 0; i < mbox->num_chans; i++) {
  struct mbox_chan *chan = &mbox->chans[i];

  chan->cl = ((void*)0);
  chan->mbox = mbox;
  chan->txdone_method = txdone;
  spin_lock_init(&chan->lock);
 }

 if (!mbox->of_xlate)
  mbox->of_xlate = of_mbox_index_xlate;

 mutex_lock(&con_mutex);
 list_add_tail(&mbox->node, &mbox_cons);
 mutex_unlock(&con_mutex);

 return 0;
}
