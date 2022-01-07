
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int lock; int deferred_bio_list; struct pool* pool; } ;
struct pool {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;


 int cell_release_no_holder (struct pool*,struct dm_bio_prison_cell*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_worker (struct pool*) ;

__attribute__((used)) static void cell_defer_no_holder(struct thin_c *tc, struct dm_bio_prison_cell *cell)
{
 struct pool *pool = tc->pool;
 unsigned long flags;

 spin_lock_irqsave(&tc->lock, flags);
 cell_release_no_holder(pool, cell, &tc->deferred_bio_list);
 spin_unlock_irqrestore(&tc->lock, flags);

 wake_worker(pool);
}
