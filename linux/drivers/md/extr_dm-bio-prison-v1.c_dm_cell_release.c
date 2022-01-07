
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell {int dummy; } ;
struct dm_bio_prison {int lock; } ;
struct bio_list {int dummy; } ;


 int __cell_release (struct dm_bio_prison*,struct dm_bio_prison_cell*,struct bio_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dm_cell_release(struct dm_bio_prison *prison,
       struct dm_bio_prison_cell *cell,
       struct bio_list *bios)
{
 unsigned long flags;

 spin_lock_irqsave(&prison->lock, flags);
 __cell_release(prison, cell, bios);
 spin_unlock_irqrestore(&prison->lock, flags);
}
