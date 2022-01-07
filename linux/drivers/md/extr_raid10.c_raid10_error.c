
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ raid_disks; } ;
struct r10conf {TYPE_1__ geo; int device_lock; } ;
struct mddev {scalar_t__ degraded; int sb_flags; int recovery; int fail_last_dev; struct r10conf* private; } ;
struct md_rdev {int bdev; int flags; int raid_disk; } ;


 int BDEVNAME_SIZE ;
 int BIT (int ) ;
 int Blocked ;
 int Faulty ;
 int In_sync ;
 int MD_RECOVERY_INTR ;
 int MD_SB_CHANGE_DEVS ;
 int MD_SB_CHANGE_PENDING ;
 int bdevname (int ,char*) ;
 int enough (struct r10conf*,int ) ;
 int mdname (struct mddev*) ;
 int pr_crit (char*,int ,int ,int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 int set_mask_bits (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void raid10_error(struct mddev *mddev, struct md_rdev *rdev)
{
 char b[BDEVNAME_SIZE];
 struct r10conf *conf = mddev->private;
 unsigned long flags;







 spin_lock_irqsave(&conf->device_lock, flags);
 if (test_bit(In_sync, &rdev->flags) && !mddev->fail_last_dev
     && !enough(conf, rdev->raid_disk)) {



  spin_unlock_irqrestore(&conf->device_lock, flags);
  return;
 }
 if (test_and_clear_bit(In_sync, &rdev->flags))
  mddev->degraded++;



 set_bit(MD_RECOVERY_INTR, &mddev->recovery);
 set_bit(Blocked, &rdev->flags);
 set_bit(Faulty, &rdev->flags);
 set_mask_bits(&mddev->sb_flags, 0,
        BIT(MD_SB_CHANGE_DEVS) | BIT(MD_SB_CHANGE_PENDING));
 spin_unlock_irqrestore(&conf->device_lock, flags);
 pr_crit("md/raid10:%s: Disk failure on %s, disabling device.\n"
  "md/raid10:%s: Operation continuing on %d devices.\n",
  mdname(mddev), bdevname(rdev->bdev, b),
  mdname(mddev), conf->geo.raid_disks - mddev->degraded);
}
