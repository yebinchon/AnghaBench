
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int backing_dev_info; } ;
struct dm_dev {int bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int bdi_congested (int ,int) ;

__attribute__((used)) static int dev_is_congested(struct dm_dev *dev, int bdi_bits)
{
 struct request_queue *q = bdev_get_queue(dev->bdev);
 return bdi_congested(q->backing_dev_info, bdi_bits);
}
