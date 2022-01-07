
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int ro; int safemode; int writes_pending; int sb_flags; scalar_t__ suspended; int sb_wait; int has_superblocks; int sysfs_state; int lock; int thread; scalar_t__ in_sync; scalar_t__ sync_checkers; int sync_thread; int recovery; } ;
struct bio {int dummy; } ;


 int BUG_ON (int) ;
 int MD_RECOVERY_NEEDED ;
 int MD_SB_CHANGE_CLEAN ;
 int MD_SB_CHANGE_PENDING ;
 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int md_wakeup_thread (int ) ;
 int percpu_ref_get (int *) ;
 int percpu_ref_put (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int ,int *) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;

bool md_write_start(struct mddev *mddev, struct bio *bi)
{
 int did_change = 0;

 if (bio_data_dir(bi) != WRITE)
  return 1;

 BUG_ON(mddev->ro == 1);
 if (mddev->ro == 2) {

  mddev->ro = 0;
  set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
  md_wakeup_thread(mddev->thread);
  md_wakeup_thread(mddev->sync_thread);
  did_change = 1;
 }
 rcu_read_lock();
 percpu_ref_get(&mddev->writes_pending);
 smp_mb();
 if (mddev->safemode == 1)
  mddev->safemode = 0;

 if (mddev->in_sync || mddev->sync_checkers) {
  spin_lock(&mddev->lock);
  if (mddev->in_sync) {
   mddev->in_sync = 0;
   set_bit(MD_SB_CHANGE_CLEAN, &mddev->sb_flags);
   set_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags);
   md_wakeup_thread(mddev->thread);
   did_change = 1;
  }
  spin_unlock(&mddev->lock);
 }
 rcu_read_unlock();
 if (did_change)
  sysfs_notify_dirent_safe(mddev->sysfs_state);
 if (!mddev->has_superblocks)
  return 1;
 wait_event(mddev->sb_wait,
     !test_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags) ||
     mddev->suspended);
 if (test_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags)) {
  percpu_ref_put(&mddev->writes_pending);
  return 0;
 }
 return 1;
}
