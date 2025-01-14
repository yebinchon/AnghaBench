
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct dm_deferred_set {size_t sweeper; size_t current_entry; int lock; TYPE_1__* entries; } ;
struct TYPE_2__ {int count; int work_items; } ;


 unsigned int ds_next (size_t) ;
 int list_add (struct list_head*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dm_deferred_set_add_work(struct dm_deferred_set *ds, struct list_head *work)
{
 int r = 1;
 unsigned long flags;
 unsigned next_entry;

 spin_lock_irqsave(&ds->lock, flags);
 if ((ds->sweeper == ds->current_entry) &&
     !ds->entries[ds->current_entry].count)
  r = 0;
 else {
  list_add(work, &ds->entries[ds->current_entry].work_items);
  next_entry = ds_next(ds->current_entry);
  if (!ds->entries[next_entry].count)
   ds->current_entry = next_entry;
 }
 spin_unlock_irqrestore(&ds->lock, flags);

 return r;
}
