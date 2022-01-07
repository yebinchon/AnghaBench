
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int lock; } ;
struct dm_thin_new_mapping {TYPE_1__* tc; } ;
struct TYPE_2__ {struct pool* pool; } ;


 int __complete_mapping_preparation (struct dm_thin_new_mapping*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void complete_mapping_preparation(struct dm_thin_new_mapping *m)
{
 unsigned long flags;
 struct pool *pool = m->tc->pool;

 spin_lock_irqsave(&pool->lock, flags);
 __complete_mapping_preparation(m);
 spin_unlock_irqrestore(&pool->lock, flags);
}
