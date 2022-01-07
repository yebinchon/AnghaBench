
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_writes_c {int dev; } ;
struct dm_target {int len; struct log_writes_c* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;



__attribute__((used)) static int log_writes_iterate_devices(struct dm_target *ti,
          iterate_devices_callout_fn fn,
          void *data)
{
 struct log_writes_c *lc = ti->private;

 return fn(ti, lc->dev, 0, ti->len, data);
}
