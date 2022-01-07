
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int raid_disks; } ;
struct r10conf {TYPE_3__* mirrors; TYPE_2__ geo; TYPE_1__* mddev; } ;
struct md_rdev {int bdev; int flags; } ;
struct TYPE_6__ {struct md_rdev* rdev; } ;
struct TYPE_4__ {scalar_t__ degraded; } ;


 int BDEVNAME_SIZE ;
 int Faulty ;
 int In_sync ;
 int bdevname (int ,char*) ;
 int pr_debug (char*,...) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void print_conf(struct r10conf *conf)
{
 int i;
 struct md_rdev *rdev;

 pr_debug("RAID10 conf printout:\n");
 if (!conf) {
  pr_debug("(!conf)\n");
  return;
 }
 pr_debug(" --- wd:%d rd:%d\n", conf->geo.raid_disks - conf->mddev->degraded,
   conf->geo.raid_disks);



 for (i = 0; i < conf->geo.raid_disks; i++) {
  char b[BDEVNAME_SIZE];
  rdev = conf->mirrors[i].rdev;
  if (rdev)
   pr_debug(" disk %d, wo:%d, o:%d, dev:%s\n",
     i, !test_bit(In_sync, &rdev->flags),
     !test_bit(Faulty, &rdev->flags),
     bdevname(rdev->bdev,b));
 }
}
