
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct dm_snapshot {scalar_t__ in_progress; TYPE_1__ in_progress_wait; } ;


 int BUG_ON (int) ;
 scalar_t__ cow_threshold ;
 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int waitqueue_active (TYPE_1__*) ;
 int wake_up_locked (TYPE_1__*) ;

__attribute__((used)) static void account_end_copy(struct dm_snapshot *s)
{
 spin_lock(&s->in_progress_wait.lock);
 BUG_ON(!s->in_progress);
 s->in_progress--;
 if (likely(s->in_progress <= cow_threshold) &&
     unlikely(waitqueue_active(&s->in_progress_wait)))
  wake_up_locked(&s->in_progress_wait);
 spin_unlock(&s->in_progress_wait.lock);
}
