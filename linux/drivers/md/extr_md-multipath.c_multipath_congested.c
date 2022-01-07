
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int backing_dev_info; } ;
struct mpconf {TYPE_1__* multipaths; } ;
struct mddev {int raid_disks; struct mpconf* private; } ;
struct md_rdev {int bdev; int flags; } ;
struct TYPE_2__ {int rdev; } ;


 int Faulty ;
 struct request_queue* bdev_get_queue (int ) ;
 int bdi_congested (int ,int) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int multipath_congested(struct mddev *mddev, int bits)
{
 struct mpconf *conf = mddev->private;
 int i, ret = 0;

 rcu_read_lock();
 for (i = 0; i < mddev->raid_disks ; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->multipaths[i].rdev);
  if (rdev && !test_bit(Faulty, &rdev->flags)) {
   struct request_queue *q = bdev_get_queue(rdev->bdev);

   ret |= bdi_congested(q->backing_dev_info, bits);



   break;
  }
 }
 rcu_read_unlock();
 return ret;
}
