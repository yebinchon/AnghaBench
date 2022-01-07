
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_log {TYPE_2__* reclaim_thread; TYPE_1__* rdev; } ;
struct mddev {int sb_wait; } ;
struct TYPE_4__ {int tsk; } ;
struct TYPE_3__ {struct mddev* mddev; } ;


 int MaxSector ;
 int kthread_park (int ) ;
 int kthread_unpark (int ) ;
 int r5l_do_reclaim (struct r5l_log*) ;
 int r5l_wake_reclaim (struct r5l_log*,int ) ;
 int wake_up (int *) ;

void r5l_quiesce(struct r5l_log *log, int quiesce)
{
 struct mddev *mddev;

 if (quiesce) {

  mddev = log->rdev->mddev;
  wake_up(&mddev->sb_wait);
  kthread_park(log->reclaim_thread->tsk);
  r5l_wake_reclaim(log, MaxSector);
  r5l_do_reclaim(log);
 } else
  kthread_unpark(log->reclaim_thread->tsk);
}
