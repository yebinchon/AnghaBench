
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int ro; scalar_t__ hold_active; int sysfs_state; int gendisk; int sb_wait; int sb_flags; scalar_t__ pers; int lock; int thread; } ;
typedef size_t ssize_t ;
typedef enum array_state { ____Placeholder_array_state } array_state ;


 int EBUSY ;
 int EINVAL ;
 int MD_SB_CHANGE_PENDING ;
 scalar_t__ UNTIL_IOCTL ;


 int array_states ;




 int clear_bit (int ,int *) ;
 int do_md_run (struct mddev*) ;
 int do_md_stop (struct mddev*,int,int *) ;

 int match_word (char const*,int ) ;
 int md_set_readonly (struct mddev*,int *) ;
 int md_wakeup_thread (int ) ;
 int mddev_lock (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;


 int restart_array (struct mddev*) ;
 int set_disk_ro (int ,int) ;
 int set_in_sync (struct mddev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

 int sysfs_notify_dirent_safe (int ) ;
 int wake_up (int *) ;


__attribute__((used)) static ssize_t
array_state_store(struct mddev *mddev, const char *buf, size_t len)
{
 int err = 0;
 enum array_state st = match_word(buf, array_states);

 if (mddev->pers && (st == 138 || st == 134) && mddev->ro != 1) {



  spin_lock(&mddev->lock);
  if (st == 138) {
   restart_array(mddev);
   clear_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags);
   md_wakeup_thread(mddev->thread);
   wake_up(&mddev->sb_wait);
  } else {
   restart_array(mddev);
   if (!set_in_sync(mddev))
    err = -EBUSY;
  }
  if (!err)
   sysfs_notify_dirent_safe(mddev->sysfs_state);
  spin_unlock(&mddev->lock);
  return err ?: len;
 }
 err = mddev_lock(mddev);
 if (err)
  return err;
 err = -EINVAL;
 switch(st) {
 case 136:
  break;
 case 133:

  err = do_md_stop(mddev, 0, ((void*)0));
  break;
 case 132:

  if (mddev->pers)
   err = do_md_stop(mddev, 2, ((void*)0));
  else
   err = 0;
  break;
 case 129:
  break;
 case 130:
  if (mddev->pers)
   err = md_set_readonly(mddev, ((void*)0));
  else {
   mddev->ro = 1;
   set_disk_ro(mddev->gendisk, 1);
   err = do_md_run(mddev);
  }
  break;
 case 131:
  if (mddev->pers) {
   if (mddev->ro == 0)
    err = md_set_readonly(mddev, ((void*)0));
   else if (mddev->ro == 1)
    err = restart_array(mddev);
   if (err == 0) {
    mddev->ro = 2;
    set_disk_ro(mddev->gendisk, 0);
   }
  } else {
   mddev->ro = 2;
   err = do_md_run(mddev);
  }
  break;
 case 134:
  if (mddev->pers) {
   err = restart_array(mddev);
   if (err)
    break;
   spin_lock(&mddev->lock);
   if (!set_in_sync(mddev))
    err = -EBUSY;
   spin_unlock(&mddev->lock);
  } else
   err = -EINVAL;
  break;
 case 138:
  if (mddev->pers) {
   err = restart_array(mddev);
   if (err)
    break;
   clear_bit(MD_SB_CHANGE_PENDING, &mddev->sb_flags);
   wake_up(&mddev->sb_wait);
   err = 0;
  } else {
   mddev->ro = 0;
   set_disk_ro(mddev->gendisk, 0);
   err = do_md_run(mddev);
  }
  break;
 case 128:
 case 137:
 case 135:

  break;
 }

 if (!err) {
  if (mddev->hold_active == UNTIL_IOCTL)
   mddev->hold_active = 0;
  sysfs_notify_dirent_safe(mddev->sysfs_state);
 }
 mddev_unlock(mddev);
 return err ?: len;
}
