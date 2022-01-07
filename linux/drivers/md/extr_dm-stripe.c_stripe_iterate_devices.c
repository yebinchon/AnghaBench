
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_c {unsigned int stripes; int stripe_width; TYPE_1__* stripe; } ;
struct dm_target {struct stripe_c* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;
struct TYPE_2__ {int physical_start; int dev; } ;



__attribute__((used)) static int stripe_iterate_devices(struct dm_target *ti,
      iterate_devices_callout_fn fn, void *data)
{
 struct stripe_c *sc = ti->private;
 int ret = 0;
 unsigned i = 0;

 do {
  ret = fn(ti, sc->stripe[i].dev,
    sc->stripe[i].physical_start,
    sc->stripe_width, data);
 } while (!ret && ++i < sc->stripes);

 return ret;
}
