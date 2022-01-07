
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct clone* private; } ;
struct clone {int wq; int hydrations_in_flight; int hydration_stopped; int flags; int waker; } ;


 int DM_CLONE_HYDRATION_SUSPENDED ;
 int atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int commit_metadata (struct clone*) ;
 int flush_workqueue (int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int wait_event (int ,int) ;

__attribute__((used)) static void clone_postsuspend(struct dm_target *ti)
{
 struct clone *clone = ti->private;
 cancel_delayed_work_sync(&clone->waker);

 set_bit(DM_CLONE_HYDRATION_SUSPENDED, &clone->flags);
 smp_mb__after_atomic();

 wait_event(clone->hydration_stopped, !atomic_read(&clone->hydrations_in_flight));
 flush_workqueue(clone->wq);

 (void) commit_metadata(clone);
}
