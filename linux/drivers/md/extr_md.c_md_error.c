
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ func; } ;
struct mddev {TYPE_2__ event_work; int thread; int recovery; scalar_t__ degraded; TYPE_1__* pers; } ;
struct md_rdev {int sysfs_state; int flags; } ;
struct TYPE_3__ {int (* error_handler ) (struct mddev*,struct md_rdev*) ;} ;


 int Faulty ;
 int MD_RECOVERY_INTR ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RECOVER ;
 int md_misc_wq ;
 int md_new_event (struct mddev*) ;
 int md_wakeup_thread (int ) ;
 int queue_work (int ,TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mddev*,struct md_rdev*) ;
 int sysfs_notify_dirent_safe (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void md_error(struct mddev *mddev, struct md_rdev *rdev)
{
 if (!rdev || test_bit(Faulty, &rdev->flags))
  return;

 if (!mddev->pers || !mddev->pers->error_handler)
  return;
 mddev->pers->error_handler(mddev,rdev);
 if (mddev->degraded)
  set_bit(MD_RECOVERY_RECOVER, &mddev->recovery);
 sysfs_notify_dirent_safe(rdev->sysfs_state);
 set_bit(MD_RECOVERY_INTR, &mddev->recovery);
 set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
 md_wakeup_thread(mddev->thread);
 if (mddev->event_work.func)
  queue_work(md_misc_wq, &mddev->event_work);
 md_new_event(mddev);
}
