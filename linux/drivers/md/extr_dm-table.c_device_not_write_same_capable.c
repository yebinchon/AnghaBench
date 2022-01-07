
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_write_same_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;
struct dm_target {int dummy; } ;
struct dm_dev {int bdev; } ;
typedef int sector_t ;


 struct request_queue* bdev_get_queue (int ) ;

__attribute__((used)) static int device_not_write_same_capable(struct dm_target *ti, struct dm_dev *dev,
      sector_t start, sector_t len, void *data)
{
 struct request_queue *q = bdev_get_queue(dev->bdev);

 return q && !q->limits.max_write_same_sectors;
}
