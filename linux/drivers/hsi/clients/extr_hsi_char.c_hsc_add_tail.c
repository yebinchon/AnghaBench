
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct hsi_msg {int link; } ;
struct hsc_channel {int lock; } ;


 int list_add_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hsc_add_tail(struct hsc_channel *channel, struct hsi_msg *msg,
       struct list_head *queue)
{
 unsigned long flags;

 spin_lock_irqsave(&channel->lock, flags);
 list_add_tail(&msg->link, queue);
 spin_unlock_irqrestore(&channel->lock, flags);
}
