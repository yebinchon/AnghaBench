
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device_modify {int node_desc; } ;
struct ib_device {int node_desc; } ;
struct TYPE_2__ {int sm_lock; } ;


 int EOPNOTSUPP ;
 int IB_DEVICE_MODIFY_NODE_DESC ;
 int NODE_DESC_SIZE ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* to_hr_dev (struct ib_device*) ;

__attribute__((used)) static int hns_roce_modify_device(struct ib_device *ib_dev, int mask,
      struct ib_device_modify *props)
{
 unsigned long flags;

 if (mask & ~IB_DEVICE_MODIFY_NODE_DESC)
  return -EOPNOTSUPP;

 if (mask & IB_DEVICE_MODIFY_NODE_DESC) {
  spin_lock_irqsave(&to_hr_dev(ib_dev)->sm_lock, flags);
  memcpy(ib_dev->node_desc, props->node_desc, NODE_DESC_SIZE);
  spin_unlock_irqrestore(&to_hr_dev(ib_dev)->sm_lock, flags);
 }

 return 0;
}
