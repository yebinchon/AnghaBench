
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {scalar_t__ max_degraded; scalar_t__ raid_disks; int device_lock; int recovery_disabled; } ;
struct mddev {scalar_t__ degraded; int sb_flags; int recovery; int recovery_disabled; struct r5conf* private; } ;
struct md_rdev {int bdev; int flags; } ;


 int BDEVNAME_SIZE ;
 int BIT (int ) ;
 int Blocked ;
 int Faulty ;
 int In_sync ;
 int MD_RECOVERY_INTR ;
 int MD_SB_CHANGE_DEVS ;
 int MD_SB_CHANGE_PENDING ;
 int bdevname (int ,char*) ;
 int clear_bit (int ,int *) ;
 int mdname (struct mddev*) ;
 int pr_crit (char*,int ,int ,int ,scalar_t__) ;
 int pr_debug (char*) ;
 int r5c_update_on_rdev_error (struct mddev*,struct md_rdev*) ;
 scalar_t__ raid5_calc_degraded (struct r5conf*) ;
 int set_bit (int ,int *) ;
 int set_mask_bits (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void raid5_error(struct mddev *mddev, struct md_rdev *rdev)
{
 char b[BDEVNAME_SIZE];
 struct r5conf *conf = mddev->private;
 unsigned long flags;
 pr_debug("raid456: error called\n");

 spin_lock_irqsave(&conf->device_lock, flags);

 if (test_bit(In_sync, &rdev->flags) &&
     mddev->degraded == conf->max_degraded) {




  conf->recovery_disabled = mddev->recovery_disabled;
  spin_unlock_irqrestore(&conf->device_lock, flags);
  return;
 }

 set_bit(Faulty, &rdev->flags);
 clear_bit(In_sync, &rdev->flags);
 mddev->degraded = raid5_calc_degraded(conf);
 spin_unlock_irqrestore(&conf->device_lock, flags);
 set_bit(MD_RECOVERY_INTR, &mddev->recovery);

 set_bit(Blocked, &rdev->flags);
 set_mask_bits(&mddev->sb_flags, 0,
        BIT(MD_SB_CHANGE_DEVS) | BIT(MD_SB_CHANGE_PENDING));
 pr_crit("md/raid:%s: Disk failure on %s, disabling device.\n"
  "md/raid:%s: Operation continuing on %d devices.\n",
  mdname(mddev),
  bdevname(rdev->bdev, b),
  mdname(mddev),
  conf->raid_disks - mddev->degraded);
 r5c_update_on_rdev_error(mddev, rdev);
}
