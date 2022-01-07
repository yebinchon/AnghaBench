
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pvrdma_dev {int ib_active; int port_mutex; int port_cap_mask; TYPE_1__* pdev; } ;
struct ib_port_modify {int clr_port_cap_mask; int set_port_cap_mask; } ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int IB_PORT_SHUTDOWN ;
 int dev_warn (int *,char*,int) ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pvrdma_dev* to_vdev (struct ib_device*) ;

int pvrdma_modify_port(struct ib_device *ibdev, u8 port, int mask,
         struct ib_port_modify *props)
{
 struct ib_port_attr attr;
 struct pvrdma_dev *vdev = to_vdev(ibdev);
 int ret;

 if (mask & ~IB_PORT_SHUTDOWN) {
  dev_warn(&vdev->pdev->dev,
    "unsupported port modify mask %#x\n", mask);
  return -EOPNOTSUPP;
 }

 mutex_lock(&vdev->port_mutex);
 ret = ib_query_port(ibdev, port, &attr);
 if (ret)
  goto out;

 vdev->port_cap_mask |= props->set_port_cap_mask;
 vdev->port_cap_mask &= ~props->clr_port_cap_mask;

 if (mask & IB_PORT_SHUTDOWN)
  vdev->ib_active = 0;

out:
 mutex_unlock(&vdev->port_mutex);
 return ret;
}
