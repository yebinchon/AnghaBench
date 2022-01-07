
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int cmd; } ;
typedef int dm_cblock_t ;


 int DMERR (char*,int ) ;
 int cache_device_name (struct cache*) ;
 int dm_cache_resize (int ,int ) ;
 int metadata_operation_failed (struct cache*,char*,int) ;
 int set_cache_size (struct cache*,int ) ;

__attribute__((used)) static int resize_cache_dev(struct cache *cache, dm_cblock_t new_size)
{
 int r;

 r = dm_cache_resize(cache->cmd, new_size);
 if (r) {
  DMERR("%s: could not resize cache metadata", cache_device_name(cache));
  metadata_operation_failed(cache, "dm_cache_resize", r);
  return r;
 }

 set_cache_size(cache, new_size);

 return 0;
}
