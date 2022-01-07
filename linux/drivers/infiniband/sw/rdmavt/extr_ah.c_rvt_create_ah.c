
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int (* notify_new_ah ) (int ,struct rdma_ah_attr*,struct rvt_ah*) ;} ;
struct TYPE_4__ {scalar_t__ max_ah; } ;
struct TYPE_5__ {TYPE_1__ props; } ;
struct rvt_dev_info {scalar_t__ n_ahs_allocated; TYPE_3__ driver_f; int n_ahs_lock; TYPE_2__ dparms; } ;
struct rvt_ah {int attr; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_ah {int device; } ;


 int EINVAL ;
 int ENOMEM ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_ah* ibah_to_rvtah (struct ib_ah*) ;
 int rdma_copy_ah_attr (int *,struct rdma_ah_attr*) ;
 scalar_t__ rvt_check_ah (int ,struct rdma_ah_attr*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct rdma_ah_attr*,struct rvt_ah*) ;

int rvt_create_ah(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr,
    u32 create_flags, struct ib_udata *udata)
{
 struct rvt_ah *ah = ibah_to_rvtah(ibah);
 struct rvt_dev_info *dev = ib_to_rvt(ibah->device);
 unsigned long flags;

 if (rvt_check_ah(ibah->device, ah_attr))
  return -EINVAL;

 spin_lock_irqsave(&dev->n_ahs_lock, flags);
 if (dev->n_ahs_allocated == dev->dparms.props.max_ah) {
  spin_unlock_irqrestore(&dev->n_ahs_lock, flags);
  return -ENOMEM;
 }

 dev->n_ahs_allocated++;
 spin_unlock_irqrestore(&dev->n_ahs_lock, flags);

 rdma_copy_ah_attr(&ah->attr, ah_attr);

 if (dev->driver_f.notify_new_ah)
  dev->driver_f.notify_new_ah(ibah->device, ah_attr, ah);

 return 0;
}
