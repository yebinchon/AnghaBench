
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {int raid_disks; TYPE_1__* mirrors; TYPE_2__* mddev; } ;
struct md_rdev {int bdev; int flags; } ;
struct TYPE_4__ {scalar_t__ degraded; } ;
struct TYPE_3__ {int rdev; } ;


 int BDEVNAME_SIZE ;
 int Faulty ;
 int In_sync ;
 int bdevname (int ,char*) ;
 int pr_debug (char*,...) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void print_conf(struct r1conf *conf)
{
 int i;

 pr_debug("RAID1 conf printout:\n");
 if (!conf) {
  pr_debug("(!conf)\n");
  return;
 }
 pr_debug(" --- wd:%d rd:%d\n", conf->raid_disks - conf->mddev->degraded,
   conf->raid_disks);

 rcu_read_lock();
 for (i = 0; i < conf->raid_disks; i++) {
  char b[BDEVNAME_SIZE];
  struct md_rdev *rdev = rcu_dereference(conf->mirrors[i].rdev);
  if (rdev)
   pr_debug(" disk %d, wo:%d, o:%d, dev:%s\n",
     i, !test_bit(In_sync, &rdev->flags),
     !test_bit(Faulty, &rdev->flags),
     bdevname(rdev->bdev,b));
 }
 rcu_read_unlock();
}
