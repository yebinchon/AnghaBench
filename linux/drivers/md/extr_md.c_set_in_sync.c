
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int in_sync; scalar_t__ sync_checkers; int safemode; int writes_pending; int sysfs_state; int sb_flags; int lock; } ;


 int MD_SB_CHANGE_CLEAN ;
 int lockdep_assert_held (int *) ;
 scalar_t__ percpu_ref_is_zero (int *) ;
 int percpu_ref_switch_to_atomic_sync (int *) ;
 int percpu_ref_switch_to_percpu (int *) ;
 int set_bit (int ,int *) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_notify_dirent_safe (int ) ;

__attribute__((used)) static bool set_in_sync(struct mddev *mddev)
{
 lockdep_assert_held(&mddev->lock);
 if (!mddev->in_sync) {
  mddev->sync_checkers++;
  spin_unlock(&mddev->lock);
  percpu_ref_switch_to_atomic_sync(&mddev->writes_pending);
  spin_lock(&mddev->lock);
  if (!mddev->in_sync &&
      percpu_ref_is_zero(&mddev->writes_pending)) {
   mddev->in_sync = 1;




   smp_mb();
   set_bit(MD_SB_CHANGE_CLEAN, &mddev->sb_flags);
   sysfs_notify_dirent_safe(mddev->sysfs_state);
  }
  if (--mddev->sync_checkers == 0)
   percpu_ref_switch_to_percpu(&mddev->writes_pending);
 }
 if (mddev->safemode == 1)
  mddev->safemode = 0;
 return mddev->in_sync;
}
