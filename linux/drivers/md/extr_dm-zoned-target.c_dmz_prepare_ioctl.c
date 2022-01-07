
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_target {TYPE_1__* dev; } ;
struct dm_target {struct dmz_target* private; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {struct block_device* bdev; } ;


 int ENODEV ;
 scalar_t__ dmz_bdev_is_dying (TYPE_1__*) ;

__attribute__((used)) static int dmz_prepare_ioctl(struct dm_target *ti, struct block_device **bdev)
{
 struct dmz_target *dmz = ti->private;

 if (dmz_bdev_is_dying(dmz->dev))
  return -ENODEV;

 *bdev = dmz->dev->bdev;

 return 0;
}
