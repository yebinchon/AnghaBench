
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int cmd; int policy; } ;
typedef int dm_cblock_t ;


 int DMERR (char*,int ) ;
 int DMERR_LIMIT (char*,int ) ;
 int ENODATA ;
 int cache_device_name (struct cache*) ;
 int dm_cache_remove_mapping (int ,int ) ;
 int metadata_operation_failed (struct cache*,char*,int) ;
 int policy_invalidate_mapping (int ,int ) ;

__attribute__((used)) static int invalidate_cblock(struct cache *cache, dm_cblock_t cblock)
{
 int r = policy_invalidate_mapping(cache->policy, cblock);
 if (!r) {
  r = dm_cache_remove_mapping(cache->cmd, cblock);
  if (r) {
   DMERR_LIMIT("%s: invalidation failed; couldn't update on disk metadata",
        cache_device_name(cache));
   metadata_operation_failed(cache, "dm_cache_remove_mapping", r);
  }

 } else if (r == -ENODATA) {



  r = 0;

 } else
  DMERR("%s: policy_invalidate_mapping failed", cache_device_name(cache));

 return r;
}
