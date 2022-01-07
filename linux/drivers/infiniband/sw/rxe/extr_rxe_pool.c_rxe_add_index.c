
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pool_entry {int index; struct rxe_pool* pool; } ;
struct rxe_pool {int pool_lock; } ;


 int alloc_index (struct rxe_pool*) ;
 int insert_index (struct rxe_pool*,struct rxe_pool_entry*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rxe_add_index(void *arg)
{
 struct rxe_pool_entry *elem = arg;
 struct rxe_pool *pool = elem->pool;
 unsigned long flags;

 write_lock_irqsave(&pool->pool_lock, flags);
 elem->index = alloc_index(pool);
 insert_index(pool, elem);
 write_unlock_irqrestore(&pool->pool_lock, flags);
}
