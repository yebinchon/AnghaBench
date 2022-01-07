
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
struct md_rdev {int flags; int blocked_wait; int sysfs_state; } ;


 int Blocked ;
 int BlockedBadBlocks ;
 int msecs_to_jiffies (int) ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int sysfs_notify_dirent_safe (int ) ;
 int test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int ) ;

void md_wait_for_blocked_rdev(struct md_rdev *rdev, struct mddev *mddev)
{
 sysfs_notify_dirent_safe(rdev->sysfs_state);
 wait_event_timeout(rdev->blocked_wait,
      !test_bit(Blocked, &rdev->flags) &&
      !test_bit(BlockedBadBlocks, &rdev->flags),
      msecs_to_jiffies(5000));
 rdev_dec_pending(rdev, mddev);
}
