
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_2__ path; } ;
struct TYPE_3__ {int bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int blk_lld_busy (struct request_queue*) ;

__attribute__((used)) static int pgpath_busy(struct pgpath *pgpath)
{
 struct request_queue *q = bdev_get_queue(pgpath->path.dev->bdev);

 return blk_lld_busy(q);
}
