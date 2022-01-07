
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_task {int (* func ) (void*) ;int destroyed; int state_lock; int state; int tasklet; int name; void* arg; void* obj; } ;


 int TASK_STATE_START ;
 int rxe_do_task ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

int rxe_init_task(void *obj, struct rxe_task *task,
    void *arg, int (*func)(void *), char *name)
{
 task->obj = obj;
 task->arg = arg;
 task->func = func;
 snprintf(task->name, sizeof(task->name), "%s", name);
 task->destroyed = 0;

 tasklet_init(&task->tasklet, rxe_do_task, (unsigned long)task);

 task->state = TASK_STATE_START;
 spin_lock_init(&task->state_lock);

 return 0;
}
