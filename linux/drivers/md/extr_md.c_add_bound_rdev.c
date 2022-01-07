
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {size_t major_version; int thread; int recovery; scalar_t__ degraded; int sb_flags; TYPE_1__* pers; } ;
struct md_rdev {int sysfs_state; int flags; struct mddev* mddev; } ;
struct TYPE_4__ {int (* validate_super ) (struct mddev*,struct md_rdev*) ;} ;
struct TYPE_3__ {int (* hot_add_disk ) (struct mddev*,struct md_rdev*) ;int hot_remove_disk; } ;


 int Journal ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RECOVER ;
 int MD_SB_CHANGE_DEVS ;
 int md_kick_rdev_from_array (struct md_rdev*) ;
 int md_new_event (struct mddev*) ;
 int md_wakeup_thread (int ) ;
 int mddev_resume (struct mddev*) ;
 int mddev_suspend (struct mddev*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mddev*,struct md_rdev*) ;
 int stub2 (struct mddev*,struct md_rdev*) ;
 TYPE_2__* super_types ;
 int sysfs_notify_dirent_safe (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int add_bound_rdev(struct md_rdev *rdev)
{
 struct mddev *mddev = rdev->mddev;
 int err = 0;
 bool add_journal = test_bit(Journal, &rdev->flags);

 if (!mddev->pers->hot_remove_disk || add_journal) {




  super_types[mddev->major_version].
   validate_super(mddev, rdev);
  if (add_journal)
   mddev_suspend(mddev);
  err = mddev->pers->hot_add_disk(mddev, rdev);
  if (add_journal)
   mddev_resume(mddev);
  if (err) {
   md_kick_rdev_from_array(rdev);
   return err;
  }
 }
 sysfs_notify_dirent_safe(rdev->sysfs_state);

 set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
 if (mddev->degraded)
  set_bit(MD_RECOVERY_RECOVER, &mddev->recovery);
 set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 md_new_event(mddev);
 md_wakeup_thread(mddev->thread);
 return 0;
}
