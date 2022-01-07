
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dust_device {int start; int dev; } ;
struct dm_target {int len; struct dust_device* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;



__attribute__((used)) static int dust_iterate_devices(struct dm_target *ti, iterate_devices_callout_fn fn,
    void *data)
{
 struct dust_device *dd = ti->private;

 return fn(ti, dd->dev, dd->start, ti->len, data);
}
