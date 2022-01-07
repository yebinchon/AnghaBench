
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_page_pool {unsigned long npages; unsigned long order; } ;
struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;
struct TYPE_2__ {struct ttm_page_pool* pools; } ;


 unsigned int NUM_POOLS ;
 TYPE_1__* _manager ;

__attribute__((used)) static unsigned long
ttm_pool_shrink_count(struct shrinker *shrink, struct shrink_control *sc)
{
 unsigned i;
 unsigned long count = 0;
 struct ttm_page_pool *pool;

 for (i = 0; i < NUM_POOLS; ++i) {
  pool = &_manager->pools[i];
  count += (pool->npages << pool->order);
 }

 return count;
}
