
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int sb_wait; scalar_t__ suspended; int active_io; TYPE_1__* pers; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int (* make_request ) (struct mddev*,struct bio*) ;} ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __wait ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int finish_wait (int *,int *) ;
 scalar_t__ is_suspended (struct mddev*,struct bio*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int schedule () ;
 int stub1 (struct mddev*,struct bio*) ;
 int wake_up (int *) ;

void md_handle_request(struct mddev *mddev, struct bio *bio)
{
check_suspended:
 rcu_read_lock();
 if (is_suspended(mddev, bio)) {
  DEFINE_WAIT(__wait);
  for (;;) {
   prepare_to_wait(&mddev->sb_wait, &__wait,
     TASK_UNINTERRUPTIBLE);
   if (!is_suspended(mddev, bio))
    break;
   rcu_read_unlock();
   schedule();
   rcu_read_lock();
  }
  finish_wait(&mddev->sb_wait, &__wait);
 }
 atomic_inc(&mddev->active_io);
 rcu_read_unlock();

 if (!mddev->pers->make_request(mddev, bio)) {
  atomic_dec(&mddev->active_io);
  wake_up(&mddev->sb_wait);
  goto check_suspended;
 }

 if (atomic_dec_and_test(&mddev->active_io) && mddev->suspended)
  wake_up(&mddev->sb_wait);
}
