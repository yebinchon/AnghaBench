
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct dm_snapshot {TYPE_1__ in_progress_wait; int in_progress; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void account_start_copy(struct dm_snapshot *s)
{
 spin_lock(&s->in_progress_wait.lock);
 s->in_progress++;
 spin_unlock(&s->in_progress_wait.lock);
}
