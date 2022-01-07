
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpconf {int raid_disks; int device_lock; } ;
struct mddev {int degraded; int sb_flags; struct mpconf* private; } ;
struct md_rdev {int bdev; int flags; } ;


 int BDEVNAME_SIZE ;
 int Faulty ;
 int In_sync ;
 int MD_SB_CHANGE_DEVS ;
 int bdevname (int ,char*) ;
 int pr_err (char*,int ,int) ;
 int pr_warn (char*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void multipath_error (struct mddev *mddev, struct md_rdev *rdev)
{
 struct mpconf *conf = mddev->private;
 char b[BDEVNAME_SIZE];

 if (conf->raid_disks - mddev->degraded <= 1) {





  pr_warn("multipath: only one IO path left and IO error.\n");

  return;
 }



 if (test_and_clear_bit(In_sync, &rdev->flags)) {
  unsigned long flags;
  spin_lock_irqsave(&conf->device_lock, flags);
  mddev->degraded++;
  spin_unlock_irqrestore(&conf->device_lock, flags);
 }
 set_bit(Faulty, &rdev->flags);
 set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
 pr_err("multipath: IO failure on %s, disabling IO path.\n"
        "multipath: Operation continuing on %d IO paths.\n",
        bdevname(rdev->bdev, b),
        conf->raid_disks - mddev->degraded);
}
