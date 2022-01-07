
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_task {int tasklet; scalar_t__ destroyed; } ;


 int rxe_do_task (unsigned long) ;
 int tasklet_schedule (int *) ;

void rxe_run_task(struct rxe_task *task, int sched)
{
 if (task->destroyed)
  return;

 if (sched)
  tasklet_schedule(&task->tasklet);
 else
  rxe_do_task((unsigned long)task);
}
