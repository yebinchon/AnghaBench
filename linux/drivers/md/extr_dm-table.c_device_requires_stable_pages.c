
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int backing_dev_info; } ;
struct dm_target {int dummy; } ;
struct dm_dev {int bdev; } ;
typedef int sector_t ;


 struct request_queue* bdev_get_queue (int ) ;
 scalar_t__ bdi_cap_stable_pages_required (int ) ;

__attribute__((used)) static int device_requires_stable_pages(struct dm_target *ti,
     struct dm_dev *dev, sector_t start,
     sector_t len, void *data)
{
 struct request_queue *q = bdev_get_queue(dev->bdev);

 return q && bdi_cap_stable_pages_required(q->backing_dev_info);
}
