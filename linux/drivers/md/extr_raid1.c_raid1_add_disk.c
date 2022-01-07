
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raid1_info {TYPE_1__* rdev; scalar_t__ head_position; } ;
struct r1conf {int raid_disks; scalar_t__ recovery_disabled; int fullsync; struct raid1_info* mirrors; } ;
struct mddev {scalar_t__ recovery_disabled; scalar_t__ queue; scalar_t__ gendisk; struct r1conf* private; } ;
struct md_rdev {int raid_disk; int saved_raid_disk; int data_offset; int bdev; int flags; } ;
struct TYPE_2__ {int flags; } ;


 int EBUSY ;
 int EEXIST ;
 int ENXIO ;
 int In_sync ;
 int QUEUE_FLAG_DISCARD ;
 int Replacement ;
 int WantReplacement ;
 int bdev_get_queue (int ) ;
 scalar_t__ blk_queue_discard (int ) ;
 int blk_queue_flag_set (int ,scalar_t__) ;
 int clear_bit (int ,int *) ;
 int disk_stack_limits (scalar_t__,int ,int) ;
 scalar_t__ md_integrity_add_rdev (struct md_rdev*,struct mddev*) ;
 int print_conf (struct r1conf*) ;
 int rcu_assign_pointer (TYPE_1__*,struct md_rdev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int raid1_add_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct r1conf *conf = mddev->private;
 int err = -EEXIST;
 int mirror = 0;
 struct raid1_info *p;
 int first = 0;
 int last = conf->raid_disks - 1;

 if (mddev->recovery_disabled == conf->recovery_disabled)
  return -EBUSY;

 if (md_integrity_add_rdev(rdev, mddev))
  return -ENXIO;

 if (rdev->raid_disk >= 0)
  first = last = rdev->raid_disk;





 if (rdev->saved_raid_disk >= 0 &&
     rdev->saved_raid_disk >= first &&
     rdev->saved_raid_disk < conf->raid_disks &&
     conf->mirrors[rdev->saved_raid_disk].rdev == ((void*)0))
  first = last = rdev->saved_raid_disk;

 for (mirror = first; mirror <= last; mirror++) {
  p = conf->mirrors + mirror;
  if (!p->rdev) {
   if (mddev->gendisk)
    disk_stack_limits(mddev->gendisk, rdev->bdev,
        rdev->data_offset << 9);

   p->head_position = 0;
   rdev->raid_disk = mirror;
   err = 0;



   if (rdev->saved_raid_disk < 0)
    conf->fullsync = 1;
   rcu_assign_pointer(p->rdev, rdev);
   break;
  }
  if (test_bit(WantReplacement, &p->rdev->flags) &&
      p[conf->raid_disks].rdev == ((void*)0)) {

   clear_bit(In_sync, &rdev->flags);
   set_bit(Replacement, &rdev->flags);
   rdev->raid_disk = mirror;
   err = 0;
   conf->fullsync = 1;
   rcu_assign_pointer(p[conf->raid_disks].rdev, rdev);
   break;
  }
 }
 if (mddev->queue && blk_queue_discard(bdev_get_queue(rdev->bdev)))
  blk_queue_flag_set(QUEUE_FLAG_DISCARD, mddev->queue);
 print_conf(conf);
 return err;
}
