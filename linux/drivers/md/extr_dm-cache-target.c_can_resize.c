
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int cache_size; scalar_t__ sized; } ;
typedef int dm_cblock_t ;


 int DMERR (char*,int ,...) ;
 int cache_device_name (struct cache*) ;
 scalar_t__ from_cblock (int ) ;
 scalar_t__ is_dirty (struct cache*,int ) ;
 int to_cblock (scalar_t__) ;

__attribute__((used)) static bool can_resize(struct cache *cache, dm_cblock_t new_size)
{
 if (from_cblock(new_size) > from_cblock(cache->cache_size)) {
  if (cache->sized) {
   DMERR("%s: unable to extend cache due to missing cache table reload",
         cache_device_name(cache));
   return 0;
  }
 }




 while (from_cblock(new_size) < from_cblock(cache->cache_size)) {
  new_size = to_cblock(from_cblock(new_size) + 1);
  if (is_dirty(cache, new_size)) {
   DMERR("%s: unable to shrink cache; cache block %llu is dirty",
         cache_device_name(cache),
         (unsigned long long) from_cblock(new_size));
   return 0;
  }
 }

 return 1;
}
