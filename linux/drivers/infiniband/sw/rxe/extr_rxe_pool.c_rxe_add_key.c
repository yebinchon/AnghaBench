
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_pool_entry {struct rxe_pool* pool; } ;
struct rxe_pool {int key_offset; int pool_lock; int key_size; } ;


 int insert_key (struct rxe_pool*,struct rxe_pool_entry*) ;
 int memcpy (int *,void*,int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rxe_add_key(void *arg, void *key)
{
 struct rxe_pool_entry *elem = arg;
 struct rxe_pool *pool = elem->pool;
 unsigned long flags;

 write_lock_irqsave(&pool->pool_lock, flags);
 memcpy((u8 *)elem + pool->key_offset, key, pool->key_size);
 insert_key(pool, elem);
 write_unlock_irqrestore(&pool->pool_lock, flags);
}
