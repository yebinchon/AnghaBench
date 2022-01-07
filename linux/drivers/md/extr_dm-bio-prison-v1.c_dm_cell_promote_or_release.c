
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell {int dummy; } ;
struct dm_bio_prison {int lock; } ;


 int __promote_or_release (struct dm_bio_prison*,struct dm_bio_prison_cell*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dm_cell_promote_or_release(struct dm_bio_prison *prison,
          struct dm_bio_prison_cell *cell)
{
 int r;
 unsigned long flags;

 spin_lock_irqsave(&prison->lock, flags);
 r = __promote_or_release(prison, cell);
 spin_unlock_irqrestore(&prison->lock, flags);

 return r;
}
