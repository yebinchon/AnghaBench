
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pool_entry {int node; scalar_t__ index; struct rxe_pool* pool; } ;
struct rxe_pool {int pool_lock; int tree; int table; scalar_t__ min_index; } ;


 int clear_bit (scalar_t__,int ) ;
 int rb_erase (int *,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rxe_drop_index(void *arg)
{
 struct rxe_pool_entry *elem = arg;
 struct rxe_pool *pool = elem->pool;
 unsigned long flags;

 write_lock_irqsave(&pool->pool_lock, flags);
 clear_bit(elem->index - pool->min_index, pool->table);
 rb_erase(&elem->node, &pool->tree);
 write_unlock_irqrestore(&pool->pool_lock, flags);
}
