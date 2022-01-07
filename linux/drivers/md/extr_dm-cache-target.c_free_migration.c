
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_migration {struct cache* cache; } ;
struct cache {int migration_pool; int migration_wait; int nr_allocated_migrations; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int mempool_free (struct dm_cache_migration*,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void free_migration(struct dm_cache_migration *mg)
{
 struct cache *cache = mg->cache;

 if (atomic_dec_and_test(&cache->nr_allocated_migrations))
  wake_up(&cache->migration_wait);

 mempool_free(mg, &cache->migration_pool);
}
