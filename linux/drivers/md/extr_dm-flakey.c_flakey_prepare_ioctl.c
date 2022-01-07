
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flakey_c {scalar_t__ start; TYPE_1__* dev; } ;
struct dm_target {scalar_t__ len; struct flakey_c* private; } ;
struct block_device {int bd_inode; } ;
struct TYPE_2__ {struct block_device* bdev; } ;


 int SECTOR_SHIFT ;
 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static int flakey_prepare_ioctl(struct dm_target *ti, struct block_device **bdev)
{
 struct flakey_c *fc = ti->private;

 *bdev = fc->dev->bdev;




 if (fc->start ||
     ti->len != i_size_read((*bdev)->bd_inode) >> SECTOR_SHIFT)
  return 1;
 return 0;
}
