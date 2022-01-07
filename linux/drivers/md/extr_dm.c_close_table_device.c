
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int * dax_dev; int * bdev; } ;
struct table_device {TYPE_1__ dm_dev; } ;
struct mapped_device {int dummy; } ;


 int FMODE_EXCL ;
 int bd_unlink_disk_holder (int *,int ) ;
 int blkdev_put (int *,int) ;
 int dm_disk (struct mapped_device*) ;
 int put_dax (int *) ;

__attribute__((used)) static void close_table_device(struct table_device *td, struct mapped_device *md)
{
 if (!td->dm_dev.bdev)
  return;

 bd_unlink_disk_holder(td->dm_dev.bdev, dm_disk(md));
 blkdev_put(td->dm_dev.bdev, td->dm_dev.mode | FMODE_EXCL);
 put_dax(td->dm_dev.dax_dev);
 td->dm_dev.bdev = ((void*)0);
 td->dm_dev.dax_dev = ((void*)0);
}
