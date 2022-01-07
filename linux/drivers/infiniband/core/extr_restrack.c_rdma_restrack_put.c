
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_restrack_entry {int kref; } ;


 int kref_put (int *,int ) ;
 int restrack_release ;

int rdma_restrack_put(struct rdma_restrack_entry *res)
{
 return kref_put(&res->kref, restrack_release);
}
