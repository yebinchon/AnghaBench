
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbox_chan {unsigned int msg_count; unsigned int msg_free; int txdone_method; TYPE_2__* mbox; int lock; void* active_req; TYPE_3__* cl; void** msg_data; } ;
struct TYPE_6__ {int (* tx_prepare ) (TYPE_3__*,void*) ;} ;
struct TYPE_5__ {int poll_hrt; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* send_data ) (struct mbox_chan*,void*) ;} ;


 int EBUSY ;
 int HRTIMER_MODE_REL ;
 unsigned int MBOX_TX_QUEUE_LEN ;
 int TXDONE_BY_POLL ;
 int hrtimer_start (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,void*) ;
 int stub2 (struct mbox_chan*,void*) ;

__attribute__((used)) static void msg_submit(struct mbox_chan *chan)
{
 unsigned count, idx;
 unsigned long flags;
 void *data;
 int err = -EBUSY;

 spin_lock_irqsave(&chan->lock, flags);

 if (!chan->msg_count || chan->active_req)
  goto exit;

 count = chan->msg_count;
 idx = chan->msg_free;
 if (idx >= count)
  idx -= count;
 else
  idx += MBOX_TX_QUEUE_LEN - count;

 data = chan->msg_data[idx];

 if (chan->cl->tx_prepare)
  chan->cl->tx_prepare(chan->cl, data);

 err = chan->mbox->ops->send_data(chan, data);
 if (!err) {
  chan->active_req = data;
  chan->msg_count--;
 }
exit:
 spin_unlock_irqrestore(&chan->lock, flags);

 if (!err && (chan->txdone_method & TXDONE_BY_POLL))

  hrtimer_start(&chan->mbox->poll_hrt, 0, HRTIMER_MODE_REL);
}
