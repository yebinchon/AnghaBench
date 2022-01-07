
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_pool {int * cache_list; int lock; } ;


 int ARRAY_SIZE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void intel_engine_pool_init(struct intel_engine_pool *pool)
{
 int n;

 spin_lock_init(&pool->lock);
 for (n = 0; n < ARRAY_SIZE(pool->cache_list); n++)
  INIT_LIST_HEAD(&pool->cache_list[n]);
}
