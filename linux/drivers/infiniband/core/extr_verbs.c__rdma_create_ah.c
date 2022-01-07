
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rdma_ah_attr {int type; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int usecnt; struct ib_device* device; } ;
struct TYPE_2__ {int (* create_ah ) (struct ib_ah*,struct rdma_ah_attr*,int,struct ib_udata*) ;} ;
struct ib_device {TYPE_1__ ops; } ;
struct ib_ah {int sgid_attr; int type; struct ib_pd* pd; struct ib_device* device; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct ib_ah* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int RDMA_CREATE_AH_SLEEPABLE ;
 int atomic_inc (int *) ;
 int ib_ah ;
 int kfree (struct ib_ah*) ;
 int might_sleep_if (int) ;
 int rdma_update_sgid_attr (struct rdma_ah_attr*,int *) ;
 struct ib_ah* rdma_zalloc_drv_obj_gfp (struct ib_device*,int ,int ) ;
 int stub1 (struct ib_ah*,struct rdma_ah_attr*,int,struct ib_udata*) ;

__attribute__((used)) static struct ib_ah *_rdma_create_ah(struct ib_pd *pd,
         struct rdma_ah_attr *ah_attr,
         u32 flags,
         struct ib_udata *udata)
{
 struct ib_device *device = pd->device;
 struct ib_ah *ah;
 int ret;

 might_sleep_if(flags & RDMA_CREATE_AH_SLEEPABLE);

 if (!device->ops.create_ah)
  return ERR_PTR(-EOPNOTSUPP);

 ah = rdma_zalloc_drv_obj_gfp(
  device, ib_ah,
  (flags & RDMA_CREATE_AH_SLEEPABLE) ? GFP_KERNEL : GFP_ATOMIC);
 if (!ah)
  return ERR_PTR(-ENOMEM);

 ah->device = device;
 ah->pd = pd;
 ah->type = ah_attr->type;
 ah->sgid_attr = rdma_update_sgid_attr(ah_attr, ((void*)0));

 ret = device->ops.create_ah(ah, ah_attr, flags, udata);
 if (ret) {
  kfree(ah);
  return ERR_PTR(ret);
 }

 atomic_inc(&pd->usecnt);
 return ah;
}
