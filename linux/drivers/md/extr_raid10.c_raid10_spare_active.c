
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct raid10_info {TYPE_3__* rdev; TYPE_2__* replacement; } ;
struct TYPE_4__ {int raid_disks; } ;
struct r10conf {int device_lock; struct raid10_info* mirrors; TYPE_1__ geo; } ;
struct mddev {int degraded; struct r10conf* private; } ;
struct TYPE_6__ {scalar_t__ recovery_offset; int sysfs_state; int flags; } ;
struct TYPE_5__ {scalar_t__ recovery_offset; int sysfs_state; int flags; } ;


 int Faulty ;
 int In_sync ;
 scalar_t__ MaxSector ;
 int print_conf (struct r10conf*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_notify_dirent_safe (int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int raid10_spare_active(struct mddev *mddev)
{
 int i;
 struct r10conf *conf = mddev->private;
 struct raid10_info *tmp;
 int count = 0;
 unsigned long flags;





 for (i = 0; i < conf->geo.raid_disks; i++) {
  tmp = conf->mirrors + i;
  if (tmp->replacement
      && tmp->replacement->recovery_offset == MaxSector
      && !test_bit(Faulty, &tmp->replacement->flags)
      && !test_and_set_bit(In_sync, &tmp->replacement->flags)) {

   if (!tmp->rdev
       || !test_and_clear_bit(In_sync, &tmp->rdev->flags))
    count++;
   if (tmp->rdev) {




    set_bit(Faulty, &tmp->rdev->flags);
    sysfs_notify_dirent_safe(
     tmp->rdev->sysfs_state);
   }
   sysfs_notify_dirent_safe(tmp->replacement->sysfs_state);
  } else if (tmp->rdev
      && tmp->rdev->recovery_offset == MaxSector
      && !test_bit(Faulty, &tmp->rdev->flags)
      && !test_and_set_bit(In_sync, &tmp->rdev->flags)) {
   count++;
   sysfs_notify_dirent_safe(tmp->rdev->sysfs_state);
  }
 }
 spin_lock_irqsave(&conf->device_lock, flags);
 mddev->degraded -= count;
 spin_unlock_irqrestore(&conf->device_lock, flags);

 print_conf(conf);
 return count;
}
