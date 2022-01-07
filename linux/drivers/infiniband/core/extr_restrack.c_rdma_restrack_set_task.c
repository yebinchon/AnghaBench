
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_restrack_entry {char const* kern_name; scalar_t__ task; } ;


 scalar_t__ current ;
 int get_task_struct (scalar_t__) ;
 int put_task_struct (scalar_t__) ;

void rdma_restrack_set_task(struct rdma_restrack_entry *res,
       const char *caller)
{
 if (caller) {
  res->kern_name = caller;
  return;
 }

 if (res->task)
  put_task_struct(res->task);
 get_task_struct(current);
 res->task = current;
}
