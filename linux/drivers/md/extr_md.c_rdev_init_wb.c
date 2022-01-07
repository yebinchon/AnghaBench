
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct md_rdev {int flags; int wb_io_wait; int wb_list; int wb_list_lock; TYPE_2__* bdev; } ;
struct TYPE_4__ {TYPE_1__* bd_queue; } ;
struct TYPE_3__ {int nr_hw_queues; } ;


 int INIT_LIST_HEAD (int *) ;
 int WBCollisionCheck ;
 int init_waitqueue_head (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int rdev_init_wb(struct md_rdev *rdev)
{
 if (rdev->bdev->bd_queue->nr_hw_queues == 1)
  return 0;

 spin_lock_init(&rdev->wb_list_lock);
 INIT_LIST_HEAD(&rdev->wb_list);
 init_waitqueue_head(&rdev->wb_io_wait);
 set_bit(WBCollisionCheck, &rdev->flags);

 return 1;
}
