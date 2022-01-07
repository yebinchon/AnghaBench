
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;


 int DMERR (char*,int ) ;
 int cache_device_name (struct cache*) ;
 int commit (struct cache*,int) ;
 int save_stats (struct cache*) ;
 int write_dirty_bitset (struct cache*) ;
 int write_discard_bitset (struct cache*) ;
 int write_hints (struct cache*) ;

__attribute__((used)) static bool sync_metadata(struct cache *cache)
{
 int r1, r2, r3, r4;

 r1 = write_dirty_bitset(cache);
 if (r1)
  DMERR("%s: could not write dirty bitset", cache_device_name(cache));

 r2 = write_discard_bitset(cache);
 if (r2)
  DMERR("%s: could not write discard bitset", cache_device_name(cache));

 save_stats(cache);

 r3 = write_hints(cache);
 if (r3)
  DMERR("%s: could not write hints", cache_device_name(cache));






 r4 = commit(cache, !r1 && !r2 && !r3);
 if (r4)
  DMERR("%s: could not write cache metadata", cache_device_name(cache));

 return !r1 && !r2 && !r3 && !r4;
}
