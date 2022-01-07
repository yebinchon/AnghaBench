
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdma_netdev_alloc_params {int (* initialize_rdma_netdev ) (struct ib_device*,int ,struct net_device*,int ) ;int param; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* rdma_netdev_get_params ) (struct ib_device*,int ,int,struct rdma_netdev_alloc_params*) ;} ;
struct ib_device {TYPE_1__ ops; } ;
typedef enum rdma_netdev_t { ____Placeholder_rdma_netdev_t } rdma_netdev_t ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_device*,int ,int,struct rdma_netdev_alloc_params*) ;
 int stub2 (struct ib_device*,int ,struct net_device*,int ) ;

int rdma_init_netdev(struct ib_device *device, u8 port_num,
       enum rdma_netdev_t type, const char *name,
       unsigned char name_assign_type,
       void (*setup)(struct net_device *),
       struct net_device *netdev)
{
 struct rdma_netdev_alloc_params params;
 int rc;

 if (!device->ops.rdma_netdev_get_params)
  return -EOPNOTSUPP;

 rc = device->ops.rdma_netdev_get_params(device, port_num, type,
      &params);
 if (rc)
  return rc;

 return params.initialize_rdma_netdev(device, port_num,
          netdev, params.param);
}
