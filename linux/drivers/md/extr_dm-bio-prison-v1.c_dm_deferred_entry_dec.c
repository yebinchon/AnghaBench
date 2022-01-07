
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct dm_deferred_entry {TYPE_1__* ds; int count; } ;
struct TYPE_2__ {int lock; } ;


 int BUG_ON (int) ;
 int __sweep (TYPE_1__*,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dm_deferred_entry_dec(struct dm_deferred_entry *entry, struct list_head *head)
{
 unsigned long flags;

 spin_lock_irqsave(&entry->ds->lock, flags);
 BUG_ON(!entry->count);
 --entry->count;
 __sweep(entry->ds, head);
 spin_unlock_irqrestore(&entry->ds->lock, flags);
}
