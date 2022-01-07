
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int commit_count; } ;
struct cache {int cmd; TYPE_1__ stats; } ;


 scalar_t__ CM_READ_ONLY ;
 int EINVAL ;
 int atomic_inc (int *) ;
 int dm_cache_commit (int ,int) ;
 scalar_t__ get_cache_mode (struct cache*) ;
 int metadata_operation_failed (struct cache*,char*,int) ;

__attribute__((used)) static int commit(struct cache *cache, bool clean_shutdown)
{
 int r;

 if (get_cache_mode(cache) >= CM_READ_ONLY)
  return -EINVAL;

 atomic_inc(&cache->stats.commit_count);
 r = dm_cache_commit(cache->cmd, clean_shutdown);
 if (r)
  metadata_operation_failed(cache, "dm_cache_commit", r);

 return r;
}
