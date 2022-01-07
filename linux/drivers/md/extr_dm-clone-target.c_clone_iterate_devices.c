
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int len; struct clone* private; } ;
struct dm_dev {int dummy; } ;
struct clone {struct dm_dev* source_dev; struct dm_dev* dest_dev; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,struct dm_dev*,int ,int ,void*) ;



__attribute__((used)) static int clone_iterate_devices(struct dm_target *ti,
     iterate_devices_callout_fn fn, void *data)
{
 int ret;
 struct clone *clone = ti->private;
 struct dm_dev *dest_dev = clone->dest_dev;
 struct dm_dev *source_dev = clone->source_dev;

 ret = fn(ti, source_dev, 0, ti->len, data);
 if (!ret)
  ret = fn(ti, dest_dev, 0, ti->len, data);
 return ret;
}
