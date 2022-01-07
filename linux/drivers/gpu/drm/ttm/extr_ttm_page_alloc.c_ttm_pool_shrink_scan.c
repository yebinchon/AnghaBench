
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_page_pool {int order; } ;
struct shrinker {int dummy; } ;
struct shrink_control {int nr_to_scan; } ;
struct TYPE_2__ {struct ttm_page_pool* pools; } ;
typedef int DEFINE_MUTEX ;


 unsigned int NUM_POOLS ;
 unsigned long SHRINK_STOP ;
 TYPE_1__* _manager ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int roundup (unsigned int,unsigned int) ;
 int ttm_page_pool_free (struct ttm_page_pool*,unsigned int,int) ;

__attribute__((used)) static unsigned long
ttm_pool_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
{
 static DEFINE_MUTEX(lock);
 static unsigned start_pool;
 unsigned i;
 unsigned pool_offset;
 struct ttm_page_pool *pool;
 int shrink_pages = sc->nr_to_scan;
 unsigned long freed = 0;
 unsigned int nr_free_pool;

 if (!mutex_trylock(&lock))
  return SHRINK_STOP;
 pool_offset = ++start_pool % NUM_POOLS;

 for (i = 0; i < NUM_POOLS; ++i) {
  unsigned nr_free = shrink_pages;
  unsigned page_nr;

  if (shrink_pages == 0)
   break;

  pool = &_manager->pools[(i + pool_offset)%NUM_POOLS];
  page_nr = (1 << pool->order);

  nr_free_pool = roundup(nr_free, page_nr) >> pool->order;
  shrink_pages = ttm_page_pool_free(pool, nr_free_pool, 1);
  freed += (nr_free_pool - shrink_pages) << pool->order;
  if (freed >= sc->nr_to_scan)
   break;
  shrink_pages <<= pool->order;
 }
 mutex_unlock(&lock);
 return freed;
}
