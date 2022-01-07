
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {int safemode_timer; int flags; int sb_wait; TYPE_2__* pers; int active_io; int suspended; int reconfig_mutex; TYPE_1__* thread; } ;
struct TYPE_4__ {int (* quiesce ) (struct mddev*,int) ;} ;
struct TYPE_3__ {scalar_t__ tsk; } ;


 int MD_ALLOW_SB_UPDATE ;
 int MD_UPDATING_SB ;
 int WARN_ON_ONCE (int ) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit_unlock (int ,int *) ;
 scalar_t__ current ;
 int del_timer_sync (int *) ;
 int lockdep_assert_held (int *) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int stub1 (struct mddev*,int) ;
 int synchronize_rcu () ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

void mddev_suspend(struct mddev *mddev)
{
 WARN_ON_ONCE(mddev->thread && current == mddev->thread->tsk);
 lockdep_assert_held(&mddev->reconfig_mutex);
 if (mddev->suspended++)
  return;
 synchronize_rcu();
 wake_up(&mddev->sb_wait);
 set_bit(MD_ALLOW_SB_UPDATE, &mddev->flags);
 smp_mb__after_atomic();
 wait_event(mddev->sb_wait, atomic_read(&mddev->active_io) == 0);
 mddev->pers->quiesce(mddev, 1);
 clear_bit_unlock(MD_ALLOW_SB_UPDATE, &mddev->flags);
 wait_event(mddev->sb_wait, !test_bit(MD_UPDATING_SB, &mddev->flags));

 del_timer_sync(&mddev->safemode_timer);
}
