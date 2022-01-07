
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity {int data_start; int data_dev; } ;
struct dm_target {int len; struct dm_verity* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;



__attribute__((used)) static int verity_iterate_devices(struct dm_target *ti,
      iterate_devices_callout_fn fn, void *data)
{
 struct dm_verity *v = ti->private;

 return fn(ti, v->data_dev, v->data_start, ti->len, data);
}
