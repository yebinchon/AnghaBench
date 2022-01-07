
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_task {int destroyed; scalar_t__ state; int tasklet; int state_lock; } ;


 scalar_t__ TASK_STATE_START ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;

void rxe_cleanup_task(struct rxe_task *task)
{
 unsigned long flags;
 bool idle;





 task->destroyed = 1;

 do {
  spin_lock_irqsave(&task->state_lock, flags);
  idle = (task->state == TASK_STATE_START);
  spin_unlock_irqrestore(&task->state_lock, flags);
 } while (!idle);

 tasklet_kill(&task->tasklet);
}
