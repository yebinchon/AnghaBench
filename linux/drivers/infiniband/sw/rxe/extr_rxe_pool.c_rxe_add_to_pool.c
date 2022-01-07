
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_pool_entry {int ref_cnt; struct rxe_pool* pool; } ;
struct rxe_pool {int flags; scalar_t__ state; scalar_t__ max_elem; TYPE_1__* rxe; int num_elem; int pool_lock; int ref_cnt; } ;
struct TYPE_2__ {int ib_dev; } ;


 int EINVAL ;
 int RXE_POOL_ATOMIC ;
 scalar_t__ RXE_POOL_STATE_VALID ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int ib_device_put (int *) ;
 int ib_device_try_get (int *) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int might_sleep_if (int) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int rxe_pool_put (struct rxe_pool*) ;

int rxe_add_to_pool(struct rxe_pool *pool, struct rxe_pool_entry *elem)
{
 unsigned long flags;

 might_sleep_if(!(pool->flags & RXE_POOL_ATOMIC));

 read_lock_irqsave(&pool->pool_lock, flags);
 if (pool->state != RXE_POOL_STATE_VALID) {
  read_unlock_irqrestore(&pool->pool_lock, flags);
  return -EINVAL;
 }
 kref_get(&pool->ref_cnt);
 read_unlock_irqrestore(&pool->pool_lock, flags);

 if (!ib_device_try_get(&pool->rxe->ib_dev))
  goto out_put_pool;

 if (atomic_inc_return(&pool->num_elem) > pool->max_elem)
  goto out_cnt;

 elem->pool = pool;
 kref_init(&elem->ref_cnt);

 return 0;

out_cnt:
 atomic_dec(&pool->num_elem);
 ib_device_put(&pool->rxe->ib_dev);
out_put_pool:
 rxe_pool_put(pool);
 return -EINVAL;
}
