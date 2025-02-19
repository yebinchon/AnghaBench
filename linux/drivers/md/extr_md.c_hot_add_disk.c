
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {scalar_t__ major_version; int thread; int recovery; int sb_flags; scalar_t__ persistent; TYPE_1__* pers; } ;
struct md_rdev {int sb_start; int sectors; int desc_nr; int saved_raid_disk; int raid_disk; int flags; TYPE_2__* bdev; } ;
typedef int dev_t ;
struct TYPE_4__ {int bd_inode; } ;
struct TYPE_3__ {int hot_add_disk; } ;


 int BDEVNAME_SIZE ;
 int EINVAL ;
 int ENODEV ;
 int Faulty ;
 scalar_t__ IS_ERR (struct md_rdev*) ;
 int In_sync ;
 int MD_RECOVERY_NEEDED ;
 int MD_SB_CHANGE_DEVS ;
 int PTR_ERR (struct md_rdev*) ;
 int bdevname (TYPE_2__*,char*) ;
 int bind_rdev_to_array (struct md_rdev*,struct mddev*) ;
 int calc_dev_sboffset (struct md_rdev*) ;
 int clear_bit (int ,int *) ;
 int export_rdev (struct md_rdev*) ;
 int i_size_read (int ) ;
 struct md_rdev* md_import_device (int ,int,int ) ;
 int md_new_event (struct mddev*) ;
 int md_update_sb (struct mddev*,int) ;
 int md_wakeup_thread (int ) ;
 int mdname (struct mddev*) ;
 int pr_warn (char*,int ,...) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hot_add_disk(struct mddev *mddev, dev_t dev)
{
 char b[BDEVNAME_SIZE];
 int err;
 struct md_rdev *rdev;

 if (!mddev->pers)
  return -ENODEV;

 if (mddev->major_version != 0) {
  pr_warn("%s: HOT_ADD may only be used with version-0 superblocks.\n",
   mdname(mddev));
  return -EINVAL;
 }
 if (!mddev->pers->hot_add_disk) {
  pr_warn("%s: personality does not support diskops!\n",
   mdname(mddev));
  return -EINVAL;
 }

 rdev = md_import_device(dev, -1, 0);
 if (IS_ERR(rdev)) {
  pr_warn("md: error, md_import_device() returned %ld\n",
   PTR_ERR(rdev));
  return -EINVAL;
 }

 if (mddev->persistent)
  rdev->sb_start = calc_dev_sboffset(rdev);
 else
  rdev->sb_start = i_size_read(rdev->bdev->bd_inode) / 512;

 rdev->sectors = rdev->sb_start;

 if (test_bit(Faulty, &rdev->flags)) {
  pr_warn("md: can not hot-add faulty %s disk to %s!\n",
   bdevname(rdev->bdev,b), mdname(mddev));
  err = -EINVAL;
  goto abort_export;
 }

 clear_bit(In_sync, &rdev->flags);
 rdev->desc_nr = -1;
 rdev->saved_raid_disk = -1;
 err = bind_rdev_to_array(rdev, mddev);
 if (err)
  goto abort_export;






 rdev->raid_disk = -1;

 set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
 if (!mddev->thread)
  md_update_sb(mddev, 1);




 set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 md_wakeup_thread(mddev->thread);
 md_new_event(mddev);
 return 0;

abort_export:
 export_rdev(rdev);
 return err;
}
