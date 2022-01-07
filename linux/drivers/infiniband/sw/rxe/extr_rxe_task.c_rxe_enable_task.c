
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_task {int tasklet; } ;


 int tasklet_enable (int *) ;

void rxe_enable_task(struct rxe_task *task)
{
 tasklet_enable(&task->tasklet);
}
