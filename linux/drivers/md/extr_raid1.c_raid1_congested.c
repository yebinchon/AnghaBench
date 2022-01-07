
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int backing_dev_info; } ;
struct r1conf {scalar_t__ pending_count; int raid_disks; TYPE_1__* mirrors; } ;
struct mddev {struct r1conf* private; } ;
struct md_rdev {int bdev; int flags; } ;
struct TYPE_2__ {int rdev; } ;


 int BUG_ON (int) ;
 int Faulty ;
 int WB_async_congested ;
 struct request_queue* bdev_get_queue (int ) ;
 int bdi_congested (int ,int) ;
 scalar_t__ max_queued_requests ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int raid1_congested(struct mddev *mddev, int bits)
{
 struct r1conf *conf = mddev->private;
 int i, ret = 0;

 if ((bits & (1 << WB_async_congested)) &&
     conf->pending_count >= max_queued_requests)
  return 1;

 rcu_read_lock();
 for (i = 0; i < conf->raid_disks * 2; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->mirrors[i].rdev);
  if (rdev && !test_bit(Faulty, &rdev->flags)) {
   struct request_queue *q = bdev_get_queue(rdev->bdev);

   BUG_ON(!q);




   if ((bits & (1 << WB_async_congested)) || 1)
    ret |= bdi_congested(q->backing_dev_info, bits);
   else
    ret &= bdi_congested(q->backing_dev_info, bits);
  }
 }
 rcu_read_unlock();
 return ret;
}
