
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_target {int len; struct delay_c* private; } ;
struct TYPE_6__ {int start; int dev; } ;
struct TYPE_5__ {int start; int dev; } ;
struct TYPE_4__ {int start; int dev; } ;
struct delay_c {TYPE_3__ flush; TYPE_2__ write; TYPE_1__ read; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;



__attribute__((used)) static int delay_iterate_devices(struct dm_target *ti,
     iterate_devices_callout_fn fn, void *data)
{
 struct delay_c *dc = ti->private;
 int ret = 0;

 ret = fn(ti, dc->read.dev, dc->read.start, ti->len, data);
 if (ret)
  goto out;
 ret = fn(ti, dc->write.dev, dc->write.start, ti->len, data);
 if (ret)
  goto out;
 ret = fn(ti, dc->flush.dev, dc->flush.start, ti->len, data);
 if (ret)
  goto out;

out:
 return ret;
}
