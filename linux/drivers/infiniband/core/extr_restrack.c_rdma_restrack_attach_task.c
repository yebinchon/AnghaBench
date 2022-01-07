
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rdma_restrack_entry {struct task_struct* task; } ;


 int get_task_struct (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;

void rdma_restrack_attach_task(struct rdma_restrack_entry *res,
          struct task_struct *task)
{
 if (res->task)
  put_task_struct(res->task);
 get_task_struct(task);
 res->task = task;
}
