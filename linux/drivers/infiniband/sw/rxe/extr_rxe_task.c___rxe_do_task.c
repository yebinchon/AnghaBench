
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_task {int (* func ) (int ) ;int ret; int arg; } ;


 int stub1 (int ) ;

int __rxe_do_task(struct rxe_task *task)

{
 int ret;

 while ((ret = task->func(task->arg)) == 0)
  ;

 task->ret = ret;

 return ret;
}
