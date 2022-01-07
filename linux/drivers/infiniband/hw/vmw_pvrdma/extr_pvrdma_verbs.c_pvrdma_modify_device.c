
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_device_modify {int sys_image_guid; int node_desc; } ;
struct ib_device {int node_desc; } ;
struct TYPE_4__ {int port_mutex; int sys_image_guid; int desc_lock; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EOPNOTSUPP ;
 int IB_DEVICE_MODIFY_NODE_DESC ;
 int IB_DEVICE_MODIFY_SYS_IMAGE_GUID ;
 int cpu_to_be64 (int ) ;
 int dev_warn (int *,char*,int) ;
 int memcpy (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* to_vdev (struct ib_device*) ;

int pvrdma_modify_device(struct ib_device *ibdev, int mask,
    struct ib_device_modify *props)
{
 unsigned long flags;

 if (mask & ~(IB_DEVICE_MODIFY_SYS_IMAGE_GUID |
       IB_DEVICE_MODIFY_NODE_DESC)) {
  dev_warn(&to_vdev(ibdev)->pdev->dev,
    "unsupported device modify mask %#x\n", mask);
  return -EOPNOTSUPP;
 }

 if (mask & IB_DEVICE_MODIFY_NODE_DESC) {
  spin_lock_irqsave(&to_vdev(ibdev)->desc_lock, flags);
  memcpy(ibdev->node_desc, props->node_desc, 64);
  spin_unlock_irqrestore(&to_vdev(ibdev)->desc_lock, flags);
 }

 if (mask & IB_DEVICE_MODIFY_SYS_IMAGE_GUID) {
  mutex_lock(&to_vdev(ibdev)->port_mutex);
  to_vdev(ibdev)->sys_image_guid =
   cpu_to_be64(props->sys_image_guid);
  mutex_unlock(&to_vdev(ibdev)->port_mutex);
 }

 return 0;
}
