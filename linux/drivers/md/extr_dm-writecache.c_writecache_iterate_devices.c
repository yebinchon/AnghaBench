
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_writecache {int dev; } ;
struct dm_target {int len; struct dm_writecache* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;



__attribute__((used)) static int writecache_iterate_devices(struct dm_target *ti,
          iterate_devices_callout_fn fn, void *data)
{
 struct dm_writecache *wc = ti->private;

 return fn(ti, wc->dev, 0, ti->len, data);
}
