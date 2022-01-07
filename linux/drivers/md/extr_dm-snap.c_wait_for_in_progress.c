
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct dm_snapshot {scalar_t__ in_progress; TYPE_1__ in_progress_wait; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __add_wait_queue (TYPE_1__*,int *) ;
 int __set_current_state (int ) ;
 int _origins_lock ;
 scalar_t__ cow_threshold ;
 int current ;
 int io_schedule () ;
 scalar_t__ likely (int) ;
 int remove_wait_queue (TYPE_1__*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 int wait ;

__attribute__((used)) static bool wait_for_in_progress(struct dm_snapshot *s, bool unlock_origins)
{
 if (unlikely(s->in_progress > cow_threshold)) {
  spin_lock(&s->in_progress_wait.lock);
  if (likely(s->in_progress > cow_threshold)) {







   DECLARE_WAITQUEUE(wait, current);
   __add_wait_queue(&s->in_progress_wait, &wait);
   __set_current_state(TASK_UNINTERRUPTIBLE);
   spin_unlock(&s->in_progress_wait.lock);
   if (unlock_origins)
    up_read(&_origins_lock);
   io_schedule();
   remove_wait_queue(&s->in_progress_wait, &wait);
   return 0;
  }
  spin_unlock(&s->in_progress_wait.lock);
 }
 return 1;
}
