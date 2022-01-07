
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {int origin_dev; } ;
struct dm_target {struct era* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;


 int get_dev_size (int ) ;

__attribute__((used)) static int era_iterate_devices(struct dm_target *ti,
          iterate_devices_callout_fn fn, void *data)
{
 struct era *era = ti->private;
 return fn(ti, era->origin_dev, 0, get_dev_size(era->origin_dev), data);
}
