
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
struct ib_pd {unsigned int flags; struct ib_mr* __internal_mr; int unsafe_global_rkey; int local_dma_lkey; struct ib_device* device; TYPE_3__ res; int usecnt; int * uobject; } ;
struct ib_mr {int need_inval; int rkey; int lkey; int * uobject; int type; struct ib_pd* pd; struct ib_device* device; } ;
struct TYPE_6__ {int device_cap_flags; } ;
struct TYPE_5__ {int (* alloc_pd ) (struct ib_pd*,int *) ;struct ib_mr* (* get_dma_mr ) (struct ib_pd*,int) ;} ;
struct ib_device {TYPE_2__ attrs; TYPE_1__ ops; int local_dma_lkey; } ;


 int ENOMEM ;
 struct ib_pd* ERR_CAST (struct ib_mr*) ;
 struct ib_pd* ERR_PTR (int) ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_DEVICE_LOCAL_DMA_LKEY ;
 int IB_MR_TYPE_DMA ;
 unsigned int IB_PD_UNSAFE_GLOBAL_RKEY ;
 scalar_t__ IS_ERR (struct ib_mr*) ;
 int RDMA_RESTRACK_PD ;
 int atomic_set (int *,int ) ;
 int ib_dealloc_pd (struct ib_pd*) ;
 int ib_pd ;
 int kfree (struct ib_pd*) ;
 int pr_warn (char*,char const*) ;
 int rdma_restrack_kadd (TYPE_3__*) ;
 int rdma_restrack_set_task (TYPE_3__*,char const*) ;
 struct ib_pd* rdma_zalloc_drv_obj (struct ib_device*,int ) ;
 int stub1 (struct ib_pd*,int *) ;
 struct ib_mr* stub2 (struct ib_pd*,int) ;

struct ib_pd *__ib_alloc_pd(struct ib_device *device, unsigned int flags,
  const char *caller)
{
 struct ib_pd *pd;
 int mr_access_flags = 0;
 int ret;

 pd = rdma_zalloc_drv_obj(device, ib_pd);
 if (!pd)
  return ERR_PTR(-ENOMEM);

 pd->device = device;
 pd->uobject = ((void*)0);
 pd->__internal_mr = ((void*)0);
 atomic_set(&pd->usecnt, 0);
 pd->flags = flags;

 pd->res.type = RDMA_RESTRACK_PD;
 rdma_restrack_set_task(&pd->res, caller);

 ret = device->ops.alloc_pd(pd, ((void*)0));
 if (ret) {
  kfree(pd);
  return ERR_PTR(ret);
 }
 rdma_restrack_kadd(&pd->res);

 if (device->attrs.device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY)
  pd->local_dma_lkey = device->local_dma_lkey;
 else
  mr_access_flags |= IB_ACCESS_LOCAL_WRITE;

 if (flags & IB_PD_UNSAFE_GLOBAL_RKEY) {
  pr_warn("%s: enabling unsafe global rkey\n", caller);
  mr_access_flags |= IB_ACCESS_REMOTE_READ | IB_ACCESS_REMOTE_WRITE;
 }

 if (mr_access_flags) {
  struct ib_mr *mr;

  mr = pd->device->ops.get_dma_mr(pd, mr_access_flags);
  if (IS_ERR(mr)) {
   ib_dealloc_pd(pd);
   return ERR_CAST(mr);
  }

  mr->device = pd->device;
  mr->pd = pd;
  mr->type = IB_MR_TYPE_DMA;
  mr->uobject = ((void*)0);
  mr->need_inval = 0;

  pd->__internal_mr = mr;

  if (!(device->attrs.device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY))
   pd->local_dma_lkey = pd->__internal_mr->lkey;

  if (flags & IB_PD_UNSAFE_GLOBAL_RKEY)
   pd->unsafe_global_rkey = pd->__internal_mr->rkey;
 }

 return pd;
}
