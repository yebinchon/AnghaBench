
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int safemode; int lock; int sb_flags; int sb_wait; int sysfs_state; scalar_t__ safemode_delay; scalar_t__ in_sync; TYPE_1__* pers; scalar_t__ ro; } ;
struct TYPE_2__ {int sync_request; } ;


 int MD_SB_CHANGE_CLEAN ;
 int MD_SB_CHANGE_PENDING ;
 int md_update_sb (struct mddev*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_notify_dirent_safe (int ) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

void md_allow_write(struct mddev *mddev)
{
 if (!mddev->pers)
  return;
 if (mddev->ro)
  return;
 if (!mddev->pers->sync_request)
  return;

 spin_lock(&mddev->lock);
 if (mddev->in_sync) {
  mddev->in_sync = 0;
  set_bit(MD_SB_CHANGE_CLEAN, &mddev->sb_flags);
  set_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags);
  if (mddev->safemode_delay &&
      mddev->safemode == 0)
   mddev->safemode = 1;
  spin_unlock(&mddev->lock);
  md_update_sb(mddev, 0);
  sysfs_notify_dirent_safe(mddev->sysfs_state);

  wait_event(mddev->sb_wait,
      !test_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags));
 } else
  spin_unlock(&mddev->lock);
}
