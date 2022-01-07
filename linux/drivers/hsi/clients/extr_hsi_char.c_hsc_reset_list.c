
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct hsc_channel {int lock; } ;


 int LIST_HEAD (int ) ;
 int hsc_free_list (int *) ;
 int list ;
 int list_splice_init (struct list_head*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hsc_reset_list(struct hsc_channel *channel, struct list_head *l)
{
 unsigned long flags;
 LIST_HEAD(list);

 spin_lock_irqsave(&channel->lock, flags);
 list_splice_init(l, &list);
 spin_unlock_irqrestore(&channel->lock, flags);

 hsc_free_list(&list);
}
