
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unstripe_c {int physical_start; int dev; } ;
struct dm_target {int len; struct unstripe_c* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;



__attribute__((used)) static int unstripe_iterate_devices(struct dm_target *ti,
        iterate_devices_callout_fn fn, void *data)
{
 struct unstripe_c *uc = ti->private;

 return fn(ti, uc->dev, uc->physical_start, ti->len, data);
}
