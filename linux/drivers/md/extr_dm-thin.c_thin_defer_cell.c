
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int lock; int deferred_cells; struct pool* pool; } ;
struct pool {int throttle; } ;
struct dm_bio_prison_cell {int user_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int throttle_lock (int *) ;
 int throttle_unlock (int *) ;
 int wake_worker (struct pool*) ;

__attribute__((used)) static void thin_defer_cell(struct thin_c *tc, struct dm_bio_prison_cell *cell)
{
 unsigned long flags;
 struct pool *pool = tc->pool;

 throttle_lock(&pool->throttle);
 spin_lock_irqsave(&tc->lock, flags);
 list_add_tail(&cell->user_list, &tc->deferred_cells);
 spin_unlock_irqrestore(&tc->lock, flags);
 throttle_unlock(&pool->throttle);

 wake_worker(pool);
}
