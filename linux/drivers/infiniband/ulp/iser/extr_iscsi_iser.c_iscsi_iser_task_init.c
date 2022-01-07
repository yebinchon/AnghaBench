
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {scalar_t__ sc; struct iscsi_iser_task* dd_data; } ;
struct iscsi_iser_task {scalar_t__ sc; scalar_t__ command_sent; int desc; } ;


 int iser_err (char*,struct iscsi_iser_task*,int) ;
 int iser_initialize_task_headers (struct iscsi_task*,int *) ;
 int iser_task_rdma_init (struct iscsi_iser_task*) ;

__attribute__((used)) static int
iscsi_iser_task_init(struct iscsi_task *task)
{
 struct iscsi_iser_task *iser_task = task->dd_data;
 int ret;

 ret = iser_initialize_task_headers(task, &iser_task->desc);
 if (ret) {
  iser_err("Failed to init task %p, err = %d\n",
    iser_task, ret);
  return ret;
 }


 if (!task->sc)
  return 0;

 iser_task->command_sent = 0;
 iser_task_rdma_init(iser_task);
 iser_task->sc = task->sc;

 return 0;
}
