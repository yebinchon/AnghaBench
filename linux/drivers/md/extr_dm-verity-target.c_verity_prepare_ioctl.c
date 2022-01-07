
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_verity {TYPE_1__* data_dev; scalar_t__ data_start; } ;
struct dm_target {scalar_t__ len; struct dm_verity* private; } ;
struct block_device {int bd_inode; } ;
struct TYPE_2__ {struct block_device* bdev; } ;


 int SECTOR_SHIFT ;
 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static int verity_prepare_ioctl(struct dm_target *ti, struct block_device **bdev)
{
 struct dm_verity *v = ti->private;

 *bdev = v->data_dev->bdev;

 if (v->data_start ||
     ti->len != i_size_read(v->data_dev->bdev->bd_inode) >> SECTOR_SHIFT)
  return 1;
 return 0;
}
