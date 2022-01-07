
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ delta_disks; scalar_t__ in_sync; scalar_t__ ro; int recovery; } ;
struct raid_set {int runtime_flags; struct mddev md; } ;
struct dm_target {struct raid_set* private; } ;


 int MD_RECOVERY_FROZEN ;
 int RT_FLAG_RS_RESUMED ;
 int RT_FLAG_RS_SUSPENDED ;
 int attempt_restore_of_faulty_devices (struct raid_set*) ;
 int clear_bit (int ,int *) ;
 int mddev_lock_nointr (struct mddev*) ;
 int mddev_resume (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 int rs_set_capacity (struct raid_set*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void raid_resume(struct dm_target *ti)
{
 struct raid_set *rs = ti->private;
 struct mddev *mddev = &rs->md;

 if (test_and_set_bit(RT_FLAG_RS_RESUMED, &rs->runtime_flags)) {





  attempt_restore_of_faulty_devices(rs);
 }

 if (test_and_clear_bit(RT_FLAG_RS_SUSPENDED, &rs->runtime_flags)) {

  if (mddev->delta_disks < 0)
   rs_set_capacity(rs);

  mddev_lock_nointr(mddev);
  clear_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
  mddev->ro = 0;
  mddev->in_sync = 0;
  mddev_resume(mddev);
  mddev_unlock(mddev);
 }
}
