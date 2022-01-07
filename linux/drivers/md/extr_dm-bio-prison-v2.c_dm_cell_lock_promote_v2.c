
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_v2 {int lock; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;


 int __promote (struct dm_bio_prison_v2*,struct dm_bio_prison_cell_v2*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dm_cell_lock_promote_v2(struct dm_bio_prison_v2 *prison,
       struct dm_bio_prison_cell_v2 *cell,
       unsigned new_lock_level)
{
 int r;
 unsigned long flags;

 spin_lock_irqsave(&prison->lock, flags);
 r = __promote(prison, cell, new_lock_level);
 spin_unlock_irqrestore(&prison->lock, flags);

 return r;
}
