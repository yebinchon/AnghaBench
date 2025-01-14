
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {scalar_t__ external; int * pers; int thread; int recovery; int sb_flags; } ;
struct TYPE_3__ {scalar_t__ shift; scalar_t__ unacked_exist; } ;
struct md_rdev {int raid_disk; int saved_raid_disk; int sysfs_state; int flags; struct mddev* mddev; TYPE_1__ badblocks; int blocked_wait; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* remove_disk ) (struct mddev*,struct md_rdev*) ;int (* gather_bitmaps ) (struct md_rdev*) ;} ;


 int Blocked ;
 int BlockedBadBlocks ;
 int EBUSY ;
 int EINVAL ;
 int ExternalBbl ;
 int FailFast ;
 int Faulty ;
 int In_sync ;
 int Journal ;
 int MD_RECOVERY_NEEDED ;
 int MD_SB_CHANGE_DEVS ;
 int Replacement ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int WriteMostly ;
 int add_bound_rdev (struct md_rdev*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ cmd_match (char const*,char*) ;
 TYPE_2__* md_cluster_ops ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int md_kick_rdev_from_array (struct md_rdev*) ;
 int md_new_event (struct mddev*) ;
 int md_wakeup_thread (int ) ;
 int mddev_create_wb_pool (struct mddev*,struct md_rdev*,int) ;
 int mddev_destroy_wb_pool (struct mddev*,struct md_rdev*) ;
 scalar_t__ mddev_is_clustered (struct mddev*) ;
 int remove_and_add_spares (struct mddev*,struct md_rdev*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mddev*,struct md_rdev*) ;
 int stub2 (struct md_rdev*) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t
state_store(struct md_rdev *rdev, const char *buf, size_t len)
{
 int err = -EINVAL;
 if (cmd_match(buf, "faulty") && rdev->mddev->pers) {
  md_error(rdev->mddev, rdev);
  if (test_bit(Faulty, &rdev->flags))
   err = 0;
  else
   err = -EBUSY;
 } else if (cmd_match(buf, "remove")) {
  if (rdev->mddev->pers) {
   clear_bit(Blocked, &rdev->flags);
   remove_and_add_spares(rdev->mddev, rdev);
  }
  if (rdev->raid_disk >= 0)
   err = -EBUSY;
  else {
   struct mddev *mddev = rdev->mddev;
   err = 0;
   if (mddev_is_clustered(mddev))
    err = md_cluster_ops->remove_disk(mddev, rdev);

   if (err == 0) {
    md_kick_rdev_from_array(rdev);
    if (mddev->pers) {
     set_bit(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
     md_wakeup_thread(mddev->thread);
    }
    md_new_event(mddev);
   }
  }
 } else if (cmd_match(buf, "writemostly")) {
  set_bit(WriteMostly, &rdev->flags);
  mddev_create_wb_pool(rdev->mddev, rdev, 0);
  err = 0;
 } else if (cmd_match(buf, "-writemostly")) {
  mddev_destroy_wb_pool(rdev->mddev, rdev);
  clear_bit(WriteMostly, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "blocked")) {
  set_bit(Blocked, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "-blocked")) {
  if (!test_bit(Faulty, &rdev->flags) &&
      !test_bit(ExternalBbl, &rdev->flags) &&
      rdev->badblocks.unacked_exist) {



   md_error(rdev->mddev, rdev);
  }
  clear_bit(Blocked, &rdev->flags);
  clear_bit(BlockedBadBlocks, &rdev->flags);
  wake_up(&rdev->blocked_wait);
  set_bit(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
  md_wakeup_thread(rdev->mddev->thread);

  err = 0;
 } else if (cmd_match(buf, "insync") && rdev->raid_disk == -1) {
  set_bit(In_sync, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "failfast")) {
  set_bit(FailFast, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "-failfast")) {
  clear_bit(FailFast, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "-insync") && rdev->raid_disk >= 0 &&
     !test_bit(Journal, &rdev->flags)) {
  if (rdev->mddev->pers == ((void*)0)) {
   clear_bit(In_sync, &rdev->flags);
   rdev->saved_raid_disk = rdev->raid_disk;
   rdev->raid_disk = -1;
   err = 0;
  }
 } else if (cmd_match(buf, "write_error")) {
  set_bit(WriteErrorSeen, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "-write_error")) {
  clear_bit(WriteErrorSeen, &rdev->flags);
  err = 0;
 } else if (cmd_match(buf, "want_replacement")) {




  if (rdev->raid_disk >= 0 &&
      !test_bit(Journal, &rdev->flags) &&
      !test_bit(Replacement, &rdev->flags))
   set_bit(WantReplacement, &rdev->flags);
  set_bit(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
  md_wakeup_thread(rdev->mddev->thread);
  err = 0;
 } else if (cmd_match(buf, "-want_replacement")) {



  err = 0;
  clear_bit(WantReplacement, &rdev->flags);
 } else if (cmd_match(buf, "replacement")) {




  if (rdev->mddev->pers)
   err = -EBUSY;
  else {
   set_bit(Replacement, &rdev->flags);
   err = 0;
  }
 } else if (cmd_match(buf, "-replacement")) {

  if (rdev->mddev->pers)
   err = -EBUSY;
  else {
   clear_bit(Replacement, &rdev->flags);
   err = 0;
  }
 } else if (cmd_match(buf, "re-add")) {
  if (!rdev->mddev->pers)
   err = -EINVAL;
  else if (test_bit(Faulty, &rdev->flags) && (rdev->raid_disk == -1) &&
    rdev->saved_raid_disk >= 0) {






   if (!mddev_is_clustered(rdev->mddev) ||
       (err = md_cluster_ops->gather_bitmaps(rdev)) == 0) {
    clear_bit(Faulty, &rdev->flags);
    err = add_bound_rdev(rdev);
   }
  } else
   err = -EBUSY;
 } else if (cmd_match(buf, "external_bbl") && (rdev->mddev->external)) {
  set_bit(ExternalBbl, &rdev->flags);
  rdev->badblocks.shift = 0;
  err = 0;
 } else if (cmd_match(buf, "-external_bbl") && (rdev->mddev->external)) {
  clear_bit(ExternalBbl, &rdev->flags);
  err = 0;
 }
 if (!err)
  sysfs_notify_dirent_safe(rdev->sysfs_state);
 return err ? err : len;
}
