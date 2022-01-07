
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rdma_restrack_root {int xa; } ;
struct rdma_restrack_entry {int dummy; } ;
struct ib_device {struct rdma_restrack_root* res; } ;
typedef enum rdma_restrack_type { ____Placeholder_rdma_restrack_type } rdma_restrack_type ;


 int ENOENT ;
 struct rdma_restrack_entry* ERR_PTR (int ) ;
 int rdma_restrack_get (struct rdma_restrack_entry*) ;
 struct rdma_restrack_entry* xa_load (int *,int ) ;
 int xa_lock (int *) ;
 int xa_unlock (int *) ;

struct rdma_restrack_entry *
rdma_restrack_get_byid(struct ib_device *dev,
         enum rdma_restrack_type type, u32 id)
{
 struct rdma_restrack_root *rt = &dev->res[type];
 struct rdma_restrack_entry *res;

 xa_lock(&rt->xa);
 res = xa_load(&rt->xa, id);
 if (!res || !rdma_restrack_get(res))
  res = ERR_PTR(-ENOENT);
 xa_unlock(&rt->xa);

 return res;
}
