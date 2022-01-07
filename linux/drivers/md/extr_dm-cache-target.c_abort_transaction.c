
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int cmd; } ;


 int CM_FAIL ;
 scalar_t__ CM_READ_ONLY ;
 int DMERR (char*,char const*) ;
 int DMERR_LIMIT (char*,char const*) ;
 char* cache_device_name (struct cache*) ;
 scalar_t__ dm_cache_metadata_abort (int ) ;
 scalar_t__ dm_cache_metadata_set_needs_check (int ) ;
 scalar_t__ get_cache_mode (struct cache*) ;
 int set_cache_mode (struct cache*,int ) ;

__attribute__((used)) static void abort_transaction(struct cache *cache)
{
 const char *dev_name = cache_device_name(cache);

 if (get_cache_mode(cache) >= CM_READ_ONLY)
  return;

 if (dm_cache_metadata_set_needs_check(cache->cmd)) {
  DMERR("%s: failed to set 'needs_check' flag in metadata", dev_name);
  set_cache_mode(cache, CM_FAIL);
 }

 DMERR_LIMIT("%s: aborting current metadata transaction", dev_name);
 if (dm_cache_metadata_abort(cache->cmd)) {
  DMERR("%s: failed to abort metadata transaction", dev_name);
  set_cache_mode(cache, CM_FAIL);
 }
}
