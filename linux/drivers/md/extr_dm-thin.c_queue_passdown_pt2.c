
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int lock; int prepared_discards_pt2; } ;
struct dm_thin_new_mapping {int list; TYPE_1__* tc; } ;
struct TYPE_2__ {struct pool* pool; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_worker (struct pool*) ;

__attribute__((used)) static void queue_passdown_pt2(struct dm_thin_new_mapping *m)
{
 unsigned long flags;
 struct pool *pool = m->tc->pool;

 spin_lock_irqsave(&pool->lock, flags);
 list_add_tail(&m->list, &pool->prepared_discards_pt2);
 spin_unlock_irqrestore(&pool->lock, flags);
 wake_worker(pool);
}
