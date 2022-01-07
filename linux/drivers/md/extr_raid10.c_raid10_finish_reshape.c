
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raid_disks; int chunk_shift; } ;
struct r10conf {TYPE_2__ geo; TYPE_1__* mirrors; } ;
struct mddev {scalar_t__ delta_disks; scalar_t__ recovery_cp; scalar_t__ resync_max_sectors; scalar_t__ array_sectors; int chunk_sectors; scalar_t__ reshape_backwards; int reshape_position; int new_layout; int layout; int recovery; struct r10conf* private; } ;
struct md_rdev {int flags; } ;
struct TYPE_3__ {int replacement; int rdev; } ;


 int In_sync ;
 int MD_RECOVERY_INTR ;
 int MD_RECOVERY_NEEDED ;
 int MaxSector ;
 int clear_bit (int ,int *) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void raid10_finish_reshape(struct mddev *mddev)
{
 struct r10conf *conf = mddev->private;

 if (test_bit(MD_RECOVERY_INTR, &mddev->recovery))
  return;

 if (mddev->delta_disks > 0) {
  if (mddev->recovery_cp > mddev->resync_max_sectors) {
   mddev->recovery_cp = mddev->resync_max_sectors;
   set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
  }
  mddev->resync_max_sectors = mddev->array_sectors;
 } else {
  int d;
  rcu_read_lock();
  for (d = conf->geo.raid_disks ;
       d < conf->geo.raid_disks - mddev->delta_disks;
       d++) {
   struct md_rdev *rdev = rcu_dereference(conf->mirrors[d].rdev);
   if (rdev)
    clear_bit(In_sync, &rdev->flags);
   rdev = rcu_dereference(conf->mirrors[d].replacement);
   if (rdev)
    clear_bit(In_sync, &rdev->flags);
  }
  rcu_read_unlock();
 }
 mddev->layout = mddev->new_layout;
 mddev->chunk_sectors = 1 << conf->geo.chunk_shift;
 mddev->reshape_position = MaxSector;
 mddev->delta_disks = 0;
 mddev->reshape_backwards = 0;
}
