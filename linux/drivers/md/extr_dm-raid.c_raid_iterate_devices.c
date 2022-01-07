
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int raid_disks; int dev_sectors; } ;
struct raid_set {TYPE_1__ md; TYPE_2__* dev; } ;
struct dm_target {struct raid_set* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,scalar_t__,int ,int ,void*) ;
struct TYPE_4__ {scalar_t__ data_dev; } ;



__attribute__((used)) static int raid_iterate_devices(struct dm_target *ti,
    iterate_devices_callout_fn fn, void *data)
{
 struct raid_set *rs = ti->private;
 unsigned int i;
 int r = 0;

 for (i = 0; !r && i < rs->md.raid_disks; i++)
  if (rs->dev[i].data_dev)
   r = fn(ti,
     rs->dev[i].data_dev,
     0,
     rs->md.dev_sectors,
     data);

 return r;
}
