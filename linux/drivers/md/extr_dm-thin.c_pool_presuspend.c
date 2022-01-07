
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_c {struct pool* pool; } ;
struct pool {int suspended; int lock; } ;
struct dm_target {struct pool_c* private; } ;


 int pool_suspend_active_thins (struct pool*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pool_presuspend(struct dm_target *ti)
{
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;
 unsigned long flags;

 spin_lock_irqsave(&pool->lock, flags);
 pool->suspended = 1;
 spin_unlock_irqrestore(&pool->lock, flags);

 pool_suspend_active_thins(pool);
}
