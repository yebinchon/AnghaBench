
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_restrack_entry {int task; } ;


 int current ;
 int init_pid_ns ;
 scalar_t__ rdma_is_kernel_res (struct rdma_restrack_entry*) ;
 int * task_active_pid_ns (int ) ;
 int task_pid_vnr (int ) ;

bool rdma_is_visible_in_pid_ns(struct rdma_restrack_entry *res)
{






 if (rdma_is_kernel_res(res))
  return task_active_pid_ns(current) == &init_pid_ns;


 return task_pid_vnr(res->task);
}
