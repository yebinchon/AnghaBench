
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int msg_count; int msg_free; int lock; void** msg_data; } ;


 int ENOBUFS ;
 int MBOX_TX_QUEUE_LEN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int add_to_rbuf(struct mbox_chan *chan, void *mssg)
{
 int idx;
 unsigned long flags;

 spin_lock_irqsave(&chan->lock, flags);


 if (chan->msg_count == MBOX_TX_QUEUE_LEN) {
  spin_unlock_irqrestore(&chan->lock, flags);
  return -ENOBUFS;
 }

 idx = chan->msg_free;
 chan->msg_data[idx] = mssg;
 chan->msg_count++;

 if (idx == MBOX_TX_QUEUE_LEN - 1)
  chan->msg_free = 0;
 else
  chan->msg_free++;

 spin_unlock_irqrestore(&chan->lock, flags);

 return idx;
}
