
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pool_entry {int node; struct rxe_pool* pool; } ;
struct rxe_pool {int pool_lock; int tree; } ;


 int rb_erase (int *,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rxe_drop_key(void *arg)
{
 struct rxe_pool_entry *elem = arg;
 struct rxe_pool *pool = elem->pool;
 unsigned long flags;

 write_lock_irqsave(&pool->pool_lock, flags);
 rb_erase(&elem->node, &pool->tree);
 write_unlock_irqrestore(&pool->pool_lock, flags);
}
