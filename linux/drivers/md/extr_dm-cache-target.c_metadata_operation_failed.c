
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;


 int CM_READ_ONLY ;
 int DMERR_LIMIT (char*,int ,char const*,int) ;
 int abort_transaction (struct cache*) ;
 int cache_device_name (struct cache*) ;
 int set_cache_mode (struct cache*,int ) ;

__attribute__((used)) static void metadata_operation_failed(struct cache *cache, const char *op, int r)
{
 DMERR_LIMIT("%s: metadata operation '%s' failed: error = %d",
      cache_device_name(cache), op, r);
 abort_transaction(cache);
 set_cache_mode(cache, CM_READ_ONLY);
}
