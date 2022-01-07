
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct cache* private; } ;
struct discard_load_info {int dummy; } ;
struct cache {int sized; scalar_t__ cache_size; int loaded_mappings; int loaded_discards; int cmd; int discard_nr_blocks; int discard_bitset; int policy; } ;
typedef scalar_t__ dm_cblock_t ;


 int DMERR (char*,int ) ;
 int EINVAL ;
 int cache_device_name (struct cache*) ;
 int can_resize (struct cache*,scalar_t__) ;
 int clear_bitset (int ,int ) ;
 int discard_load_info_init (struct cache*,struct discard_load_info*) ;
 int dm_cache_load_discards (int ,int ,struct discard_load_info*) ;
 int dm_cache_load_mappings (int ,int ,int ,struct cache*) ;
 int from_dblock (int ) ;
 scalar_t__ get_cache_dev_size (struct cache*) ;
 int load_discard ;
 int load_mapping ;
 int metadata_operation_failed (struct cache*,char*,int) ;
 int resize_cache_dev (struct cache*,scalar_t__) ;
 int set_discard_range (struct discard_load_info*) ;

__attribute__((used)) static int cache_preresume(struct dm_target *ti)
{
 int r = 0;
 struct cache *cache = ti->private;
 dm_cblock_t csize = get_cache_dev_size(cache);




 if (!cache->sized) {
  r = resize_cache_dev(cache, csize);
  if (r)
   return r;

  cache->sized = 1;

 } else if (csize != cache->cache_size) {
  if (!can_resize(cache, csize))
   return -EINVAL;

  r = resize_cache_dev(cache, csize);
  if (r)
   return r;
 }

 if (!cache->loaded_mappings) {
  r = dm_cache_load_mappings(cache->cmd, cache->policy,
        load_mapping, cache);
  if (r) {
   DMERR("%s: could not load cache mappings", cache_device_name(cache));
   metadata_operation_failed(cache, "dm_cache_load_mappings", r);
   return r;
  }

  cache->loaded_mappings = 1;
 }

 if (!cache->loaded_discards) {
  struct discard_load_info li;






  clear_bitset(cache->discard_bitset, from_dblock(cache->discard_nr_blocks));

  discard_load_info_init(cache, &li);
  r = dm_cache_load_discards(cache->cmd, load_discard, &li);
  if (r) {
   DMERR("%s: could not load origin discards", cache_device_name(cache));
   metadata_operation_failed(cache, "dm_cache_load_discards", r);
   return r;
  }
  set_discard_range(&li);

  cache->loaded_discards = 1;
 }

 return r;
}
