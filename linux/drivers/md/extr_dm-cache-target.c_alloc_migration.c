
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_migration {struct cache* cache; } ;
struct cache {int nr_allocated_migrations; int migration_pool; } ;


 int GFP_NOIO ;
 int atomic_inc (int *) ;
 struct dm_cache_migration* mempool_alloc (int *,int ) ;
 int memset (struct dm_cache_migration*,int ,int) ;

__attribute__((used)) static struct dm_cache_migration *alloc_migration(struct cache *cache)
{
 struct dm_cache_migration *mg;

 mg = mempool_alloc(&cache->migration_pool, GFP_NOIO);

 memset(mg, 0, sizeof(*mg));

 mg->cache = cache;
 atomic_inc(&cache->nr_allocated_migrations);

 return mg;
}
