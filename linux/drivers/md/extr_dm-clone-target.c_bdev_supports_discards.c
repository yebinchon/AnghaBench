
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct block_device {int dummy; } ;


 struct request_queue* bdev_get_queue (struct block_device*) ;
 scalar_t__ blk_queue_discard (struct request_queue*) ;

__attribute__((used)) static bool bdev_supports_discards(struct block_device *bdev)
{
 struct request_queue *q = bdev_get_queue(bdev);

 return (q && blk_queue_discard(q));
}
