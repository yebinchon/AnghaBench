
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pool {int pool_lock; int num_elem; int state; } ;


 int RXE_POOL_STATE_INVALID ;
 scalar_t__ atomic_read (int *) ;
 int pool_name (struct rxe_pool*) ;
 int pr_warn (char*,int ) ;
 int rxe_pool_put (struct rxe_pool*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rxe_pool_cleanup(struct rxe_pool *pool)
{
 unsigned long flags;

 write_lock_irqsave(&pool->pool_lock, flags);
 pool->state = RXE_POOL_STATE_INVALID;
 if (atomic_read(&pool->num_elem) > 0)
  pr_warn("%s pool destroyed with unfree'd elem\n",
   pool_name(pool));
 write_unlock_irqrestore(&pool->pool_lock, flags);

 rxe_pool_put(pool);
}
