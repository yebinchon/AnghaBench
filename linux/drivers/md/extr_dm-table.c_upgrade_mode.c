
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct dm_dev_internal {struct dm_dev* dm_dev; } ;
struct dm_dev {int mode; TYPE_1__* bdev; } ;
typedef int fmode_t ;
struct TYPE_2__ {int bd_dev; } ;


 int dm_get_table_device (struct mapped_device*,int ,int,struct dm_dev**) ;
 int dm_put_table_device (struct mapped_device*,struct dm_dev*) ;

__attribute__((used)) static int upgrade_mode(struct dm_dev_internal *dd, fmode_t new_mode,
   struct mapped_device *md)
{
 int r;
 struct dm_dev *old_dev, *new_dev;

 old_dev = dd->dm_dev;

 r = dm_get_table_device(md, dd->dm_dev->bdev->bd_dev,
    dd->dm_dev->mode | new_mode, &new_dev);
 if (r)
  return r;

 dd->dm_dev = new_dev;
 dm_put_table_device(md, old_dev);

 return 0;
}
