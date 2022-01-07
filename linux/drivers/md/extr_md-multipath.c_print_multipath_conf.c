
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct multipath_info {TYPE_1__* rdev; } ;
struct mpconf {int raid_disks; struct multipath_info* multipaths; TYPE_2__* mddev; } ;
struct TYPE_4__ {scalar_t__ degraded; } ;
struct TYPE_3__ {int bdev; int flags; } ;


 int BDEVNAME_SIZE ;
 int Faulty ;
 int bdevname (int ,char*) ;
 int pr_debug (char*,...) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void print_multipath_conf (struct mpconf *conf)
{
 int i;
 struct multipath_info *tmp;

 pr_debug("MULTIPATH conf printout:\n");
 if (!conf) {
  pr_debug("(conf==NULL)\n");
  return;
 }
 pr_debug(" --- wd:%d rd:%d\n", conf->raid_disks - conf->mddev->degraded,
   conf->raid_disks);

 for (i = 0; i < conf->raid_disks; i++) {
  char b[BDEVNAME_SIZE];
  tmp = conf->multipaths + i;
  if (tmp->rdev)
   pr_debug(" disk%d, o:%d, dev:%s\n",
     i,!test_bit(Faulty, &tmp->rdev->flags),
     bdevname(tmp->rdev->bdev,b));
 }
}
