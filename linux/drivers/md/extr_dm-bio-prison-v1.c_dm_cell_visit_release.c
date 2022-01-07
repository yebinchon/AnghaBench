
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell {int node; } ;
struct dm_bio_prison {int lock; int cells; } ;


 int rb_erase (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dm_cell_visit_release(struct dm_bio_prison *prison,
      void (*visit_fn)(void *, struct dm_bio_prison_cell *),
      void *context,
      struct dm_bio_prison_cell *cell)
{
 unsigned long flags;

 spin_lock_irqsave(&prison->lock, flags);
 visit_fn(context, cell);
 rb_erase(&cell->node, &prison->cells);
 spin_unlock_irqrestore(&prison->lock, flags);
}
