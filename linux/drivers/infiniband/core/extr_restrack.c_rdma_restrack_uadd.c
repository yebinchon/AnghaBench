
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_restrack_entry {scalar_t__ type; int user; int * kern_name; int * task; } ;


 scalar_t__ RDMA_RESTRACK_CM_ID ;
 scalar_t__ RDMA_RESTRACK_COUNTER ;
 int rdma_restrack_add (struct rdma_restrack_entry*) ;
 int rdma_restrack_set_task (struct rdma_restrack_entry*,int *) ;

void rdma_restrack_uadd(struct rdma_restrack_entry *res)
{
 if ((res->type != RDMA_RESTRACK_CM_ID) &&
     (res->type != RDMA_RESTRACK_COUNTER))
  res->task = ((void*)0);

 if (!res->task)
  rdma_restrack_set_task(res, ((void*)0));
 res->kern_name = ((void*)0);

 res->user = 1;
 rdma_restrack_add(res);
}
