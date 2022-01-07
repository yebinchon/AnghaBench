
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_v2 {int lock; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
struct bio_list {int dummy; } ;


 int __unlock (struct dm_bio_prison_v2*,struct dm_bio_prison_cell_v2*,struct bio_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool dm_cell_unlock_v2(struct dm_bio_prison_v2 *prison,
         struct dm_bio_prison_cell_v2 *cell,
         struct bio_list *bios)
{
 bool r;
 unsigned long flags;

 spin_lock_irqsave(&prison->lock, flags);
 r = __unlock(prison, cell, bios);
 spin_unlock_irqrestore(&prison->lock, flags);

 return r;
}
