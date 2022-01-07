
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int len; struct cache* private; } ;
struct cache {int origin_dev; int cache_dev; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;


 int get_dev_size (int ) ;

__attribute__((used)) static int cache_iterate_devices(struct dm_target *ti,
     iterate_devices_callout_fn fn, void *data)
{
 int r = 0;
 struct cache *cache = ti->private;

 r = fn(ti, cache->cache_dev, 0, get_dev_size(cache->cache_dev), data);
 if (!r)
  r = fn(ti, cache->origin_dev, 0, ti->len, data);

 return r;
}
