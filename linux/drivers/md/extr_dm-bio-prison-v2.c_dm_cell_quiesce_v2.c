
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct dm_bio_prison_v2 {int lock; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;


 int __quiesce (struct dm_bio_prison_v2*,struct dm_bio_prison_cell_v2*,struct work_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dm_cell_quiesce_v2(struct dm_bio_prison_v2 *prison,
   struct dm_bio_prison_cell_v2 *cell,
   struct work_struct *continuation)
{
 unsigned long flags;

 spin_lock_irqsave(&prison->lock, flags);
 __quiesce(prison, cell, continuation);
 spin_unlock_irqrestore(&prison->lock, flags);
}
