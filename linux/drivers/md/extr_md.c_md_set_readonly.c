
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int ro; int open_mutex; int sysfs_state; int thread; int recovery; int gendisk; scalar_t__ pers; TYPE_1__* sync_thread; int openers; int sb_flags; int sb_wait; scalar_t__ external; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int tsk; } ;


 int EBUSY ;
 int ENXIO ;
 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_INTR ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RUNNING ;
 int MD_SB_CHANGE_PENDING ;
 int __md_stop_writes (struct mddev*) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int md_wakeup_thread (int ) ;
 int mddev_lock_nointr (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 int mdname (struct mddev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ) ;
 int resync_wait ;
 int set_bit (int ,int *) ;
 int set_disk_ro (int ,int) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int md_set_readonly(struct mddev *mddev, struct block_device *bdev)
{
 int err = 0;
 int did_freeze = 0;

 if (!test_bit(MD_RECOVERY_FROZEN, &mddev->recovery)) {
  did_freeze = 1;
  set_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
  md_wakeup_thread(mddev->thread);
 }
 if (test_bit(MD_RECOVERY_RUNNING, &mddev->recovery))
  set_bit(MD_RECOVERY_INTR, &mddev->recovery);
 if (mddev->sync_thread)


  wake_up_process(mddev->sync_thread->tsk);

 if (mddev->external && test_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags))
  return -EBUSY;
 mddev_unlock(mddev);
 wait_event(resync_wait, !test_bit(MD_RECOVERY_RUNNING,
       &mddev->recovery));
 wait_event(mddev->sb_wait,
     !test_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags));
 mddev_lock_nointr(mddev);

 mutex_lock(&mddev->open_mutex);
 if ((mddev->pers && atomic_read(&mddev->openers) > !!bdev) ||
     mddev->sync_thread ||
     test_bit(MD_RECOVERY_RUNNING, &mddev->recovery)) {
  pr_warn("md: %s still in use.\n",mdname(mddev));
  if (did_freeze) {
   clear_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
   set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
   md_wakeup_thread(mddev->thread);
  }
  err = -EBUSY;
  goto out;
 }
 if (mddev->pers) {
  __md_stop_writes(mddev);

  err = -ENXIO;
  if (mddev->ro==1)
   goto out;
  mddev->ro = 1;
  set_disk_ro(mddev->gendisk, 1);
  clear_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
  md_wakeup_thread(mddev->thread);
  sysfs_notify_dirent_safe(mddev->sysfs_state);
  err = 0;
 }
out:
 mutex_unlock(&mddev->open_mutex);
 return err;
}
