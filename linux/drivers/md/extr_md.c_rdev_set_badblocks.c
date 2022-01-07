
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int thread; int sb_flags; } ;
struct md_rdev {struct mddev* mddev; int sysfs_state; int kobj; int flags; int badblocks; scalar_t__ data_offset; scalar_t__ new_data_offset; } ;
typedef int sector_t ;


 int BIT (int ) ;
 int ExternalBbl ;
 int MD_SB_CHANGE_CLEAN ;
 int MD_SB_CHANGE_PENDING ;
 int badblocks_set (int *,int ,int,int ) ;
 int md_wakeup_thread (int ) ;
 int set_mask_bits (int *,int ,int) ;
 int sysfs_notify (int *,int *,char*) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;

int rdev_set_badblocks(struct md_rdev *rdev, sector_t s, int sectors,
         int is_new)
{
 struct mddev *mddev = rdev->mddev;
 int rv;
 if (is_new)
  s += rdev->new_data_offset;
 else
  s += rdev->data_offset;
 rv = badblocks_set(&rdev->badblocks, s, sectors, 0);
 if (rv == 0) {

  if (test_bit(ExternalBbl, &rdev->flags))
   sysfs_notify(&rdev->kobj, ((void*)0),
         "unacknowledged_bad_blocks");
  sysfs_notify_dirent_safe(rdev->sysfs_state);
  set_mask_bits(&mddev->sb_flags, 0,
         BIT(MD_SB_CHANGE_CLEAN) | BIT(MD_SB_CHANGE_PENDING));
  md_wakeup_thread(rdev->mddev->thread);
  return 1;
 } else
  return 0;
}
