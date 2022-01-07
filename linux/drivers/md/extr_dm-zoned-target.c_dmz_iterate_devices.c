
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {int ddev; struct dmz_dev* dev; } ;
struct dmz_dev {int capacity; int zone_nr_sectors; } ;
struct dm_target {struct dmz_target* private; } ;
typedef int sector_t ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int,void*) ;



__attribute__((used)) static int dmz_iterate_devices(struct dm_target *ti,
          iterate_devices_callout_fn fn, void *data)
{
 struct dmz_target *dmz = ti->private;
 struct dmz_dev *dev = dmz->dev;
 sector_t capacity = dev->capacity & ~(dev->zone_nr_sectors - 1);

 return fn(ti, dmz->ddev, 0, capacity, data);
}
