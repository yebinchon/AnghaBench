
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int dummy; } ;
struct cache_args {int policy_name; } ;
struct cache {struct dm_cache_policy* policy; int sectors_per_block; int origin_sectors; int cache_size; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct dm_cache_policy*) ;
 int PTR_ERR (struct dm_cache_policy*) ;
 struct dm_cache_policy* dm_cache_policy_create (int ,int ,int ,int ) ;

__attribute__((used)) static int create_cache_policy(struct cache *cache, struct cache_args *ca,
          char **error)
{
 struct dm_cache_policy *p = dm_cache_policy_create(ca->policy_name,
          cache->cache_size,
          cache->origin_sectors,
          cache->sectors_per_block);
 if (IS_ERR(p)) {
  *error = "Error creating cache's policy";
  return PTR_ERR(p);
 }
 cache->policy = p;
 BUG_ON(!cache->policy);

 return 0;
}
