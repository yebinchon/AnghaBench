
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_restrack_root {int xa; } ;
struct ib_device {struct rdma_restrack_root* res; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RDMA_RESTRACK_MAX ;
 int XA_FLAGS_ALLOC ;
 struct rdma_restrack_root* kcalloc (int,int,int ) ;
 int xa_init_flags (int *,int ) ;

int rdma_restrack_init(struct ib_device *dev)
{
 struct rdma_restrack_root *rt;
 int i;

 dev->res = kcalloc(RDMA_RESTRACK_MAX, sizeof(*rt), GFP_KERNEL);
 if (!dev->res)
  return -ENOMEM;

 rt = dev->res;

 for (i = 0; i < RDMA_RESTRACK_MAX; i++)
  xa_init_flags(&rt[i].xa, XA_FLAGS_ALLOC);

 return 0;
}
