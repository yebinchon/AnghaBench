
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int raid_disks; int device_lock; int recovery_disabled; } ;
struct mddev {int degraded; int sb_flags; int recovery; int recovery_disabled; int fail_last_dev; struct r1conf* private; } ;
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
 int mdname (struct mddev*) ;
 int pr_crit (char*,int ,int ,int ,int) ;
 int set_bit (int ,int *) ;
 int set_mask_bits (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void raid1_error(struct mddev *mddev, struct md_rdev *rdev)
{
 char b[BDEVNAME_SIZE];
 struct r1conf *conf = mddev->private;
 unsigned long flags;







 spin_lock_irqsave(&conf->device_lock, flags);
 if (test_bit(In_sync, &rdev->flags) && !mddev->fail_last_dev
     && (conf->raid_disks - mddev->degraded) == 1) {






  conf->recovery_disabled = mddev->recovery_disabled;
  spin_unlock_irqrestore(&conf->device_lock, flags);
  return;
 }
 set_bit(Blocked, &rdev->flags);
 if (test_and_clear_bit(In_sync, &rdev->flags))
  mddev->degraded++;
 set_bit(Faulty, &rdev->flags);
 spin_unlock_irqrestore(&conf->device_lock, flags);



 set_bit(MD_RECOVERY_INTR, &mddev->recovery);
 set_mask_bits(&mddev->sb_flags, 0,
        BIT(MD_SB_CHANGE_DEVS) | BIT(MD_SB_CHANGE_PENDING));
 pr_crit("md/raid1:%s: Disk failure on %s, disabling device.\n"
  "md/raid1:%s: Operation continuing on %d devices.\n",
  mdname(mddev), bdevname(rdev->bdev, b),
  mdname(mddev), conf->raid_disks - mddev->degraded);
}
