
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbox_chan {int tx_complete; TYPE_2__* cl; TYPE_1__* mbox; } ;
struct TYPE_4__ {int tx_tout; scalar_t__ tx_block; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ETIME ;
 int add_to_rbuf (struct mbox_chan*,void*) ;
 int dev_err (int ,char*) ;
 unsigned long msecs_to_jiffies (int) ;
 int msg_submit (struct mbox_chan*) ;
 int tx_tick (struct mbox_chan*,int) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

int mbox_send_message(struct mbox_chan *chan, void *mssg)
{
 int t;

 if (!chan || !chan->cl)
  return -EINVAL;

 t = add_to_rbuf(chan, mssg);
 if (t < 0) {
  dev_err(chan->mbox->dev, "Try increasing MBOX_TX_QUEUE_LEN\n");
  return t;
 }

 msg_submit(chan);

 if (chan->cl->tx_block) {
  unsigned long wait;
  int ret;

  if (!chan->cl->tx_tout)
   wait = msecs_to_jiffies(3600000);
  else
   wait = msecs_to_jiffies(chan->cl->tx_tout);

  ret = wait_for_completion_timeout(&chan->tx_complete, wait);
  if (ret == 0) {
   t = -ETIME;
   tx_tick(chan, t);
  }
 }

 return t;
}
