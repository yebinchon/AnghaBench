
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int len; struct dm_integrity_c* private; } ;
struct dm_integrity_c {int dev; scalar_t__ metadata_run; scalar_t__ initial_sectors; scalar_t__ start; int meta_dev; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,scalar_t__,int ,void*) ;



__attribute__((used)) static int dm_integrity_iterate_devices(struct dm_target *ti,
     iterate_devices_callout_fn fn, void *data)
{
 struct dm_integrity_c *ic = ti->private;

 if (!ic->meta_dev)
  return fn(ti, ic->dev, ic->start + ic->initial_sectors + ic->metadata_run, ti->len, data);
 else
  return fn(ti, ic->dev, 0, ti->len, data);
}
