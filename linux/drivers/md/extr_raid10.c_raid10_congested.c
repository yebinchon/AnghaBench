
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int backing_dev_info; } ;
struct TYPE_5__ {int raid_disks; } ;
struct TYPE_4__ {int raid_disks; } ;
struct r10conf {scalar_t__ pending_count; TYPE_3__* mirrors; TYPE_2__ prev; TYPE_1__ geo; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {int bdev; int flags; } ;
struct TYPE_6__ {int rdev; } ;


 int Faulty ;
 int WB_async_congested ;
 struct request_queue* bdev_get_queue (int ) ;
 int bdi_congested (int ,int) ;
 scalar_t__ max_queued_requests ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int raid10_congested(struct mddev *mddev, int bits)
{
 struct r10conf *conf = mddev->private;
 int i, ret = 0;

 if ((bits & (1 << WB_async_congested)) &&
     conf->pending_count >= max_queued_requests)
  return 1;

 rcu_read_lock();
 for (i = 0;
      (i < conf->geo.raid_disks || i < conf->prev.raid_disks)
       && ret == 0;
      i++) {
  struct md_rdev *rdev = rcu_dereference(conf->mirrors[i].rdev);
  if (rdev && !test_bit(Faulty, &rdev->flags)) {
   struct request_queue *q = bdev_get_queue(rdev->bdev);

   ret |= bdi_congested(q->backing_dev_info, bits);
  }
 }
 rcu_read_unlock();
 return ret;
}
