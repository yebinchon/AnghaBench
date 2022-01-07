
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_restrack_root {int xa; } ;
struct rdma_restrack_entry {int valid; size_t type; int * task; int comp; int id; } ;
struct ib_device {struct rdma_restrack_root* res; } ;


 scalar_t__ WARN_ON (int) ;
 int put_task_struct (int *) ;
 int rdma_restrack_put (struct rdma_restrack_entry*) ;
 struct ib_device* res_to_dev (struct rdma_restrack_entry*) ;
 int wait_for_completion (int *) ;
 struct rdma_restrack_entry* xa_erase (int *,int ) ;

void rdma_restrack_del(struct rdma_restrack_entry *res)
{
 struct rdma_restrack_entry *old;
 struct rdma_restrack_root *rt;
 struct ib_device *dev;

 if (!res->valid)
  goto out;

 dev = res_to_dev(res);
 if (WARN_ON(!dev))
  return;

 rt = &dev->res[res->type];

 old = xa_erase(&rt->xa, res->id);
 WARN_ON(old != res);
 res->valid = 0;

 rdma_restrack_put(res);
 wait_for_completion(&res->comp);

out:
 if (res->task) {
  put_task_struct(res->task);
  res->task = ((void*)0);
 }
}
