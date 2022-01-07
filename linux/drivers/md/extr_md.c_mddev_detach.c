
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {scalar_t__ queue; int thread; TYPE_1__* pers; } ;
struct TYPE_2__ {int (* quiesce ) (struct mddev*,int) ;} ;


 int blk_sync_queue (scalar_t__) ;
 int md_bitmap_wait_behind_writes (struct mddev*) ;
 int md_unregister_thread (int *) ;
 int stub1 (struct mddev*,int) ;
 int stub2 (struct mddev*,int) ;

__attribute__((used)) static void mddev_detach(struct mddev *mddev)
{
 md_bitmap_wait_behind_writes(mddev);
 if (mddev->pers && mddev->pers->quiesce) {
  mddev->pers->quiesce(mddev, 1);
  mddev->pers->quiesce(mddev, 0);
 }
 md_unregister_thread(&mddev->thread);
 if (mddev->queue)
  blk_sync_queue(mddev->queue);
}
