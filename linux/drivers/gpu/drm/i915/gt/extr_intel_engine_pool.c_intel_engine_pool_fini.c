
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_pool {int * cache_list; } ;


 int ARRAY_SIZE (int *) ;
 int GEM_BUG_ON (int) ;
 int list_empty (int *) ;

void intel_engine_pool_fini(struct intel_engine_pool *pool)
{
 int n;

 for (n = 0; n < ARRAY_SIZE(pool->cache_list); n++)
  GEM_BUG_ON(!list_empty(&pool->cache_list[n]));
}
