
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dust_device {scalar_t__ start; struct dm_dev* dev; } ;
struct dm_target {scalar_t__ len; struct dust_device* private; } ;
struct dm_dev {struct block_device* bdev; } ;
struct block_device {int bd_inode; } ;


 int SECTOR_SHIFT ;
 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static int dust_prepare_ioctl(struct dm_target *ti, struct block_device **bdev)
{
 struct dust_device *dd = ti->private;
 struct dm_dev *dev = dd->dev;

 *bdev = dev->bdev;




 if (dd->start ||
     ti->len != i_size_read(dev->bdev->bd_inode) >> SECTOR_SHIFT)
  return 1;

 return 0;
}
