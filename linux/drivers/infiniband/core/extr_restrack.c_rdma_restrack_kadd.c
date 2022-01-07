
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_restrack_entry {int user; int * task; } ;


 int rdma_restrack_add (struct rdma_restrack_entry*) ;
 int set_kern_name (struct rdma_restrack_entry*) ;

void rdma_restrack_kadd(struct rdma_restrack_entry *res)
{
 res->task = ((void*)0);
 set_kern_name(res);
 res->user = 0;
 rdma_restrack_add(res);
}
