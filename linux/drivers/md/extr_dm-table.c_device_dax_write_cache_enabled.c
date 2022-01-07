
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_dev {struct dax_device* dax_dev; } ;
struct dax_device {int dummy; } ;
typedef int sector_t ;


 scalar_t__ dax_write_cache_enabled (struct dax_device*) ;

__attribute__((used)) static int device_dax_write_cache_enabled(struct dm_target *ti,
       struct dm_dev *dev, sector_t start,
       sector_t len, void *data)
{
 struct dax_device *dax_dev = dev->dax_dev;

 if (!dax_dev)
  return 0;

 if (dax_write_cache_enabled(dax_dev))
  return 1;
 return 0;
}
