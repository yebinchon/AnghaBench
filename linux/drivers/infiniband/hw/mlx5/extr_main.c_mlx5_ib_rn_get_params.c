
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdma_netdev_alloc_params {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum rdma_netdev_t { ____Placeholder_rdma_netdev_t } rdma_netdev_t ;
struct TYPE_2__ {int mdev; } ;


 int EOPNOTSUPP ;
 int RDMA_NETDEV_IPOIB ;
 int mlx5_rdma_rn_get_params (int ,struct ib_device*,struct rdma_netdev_alloc_params*) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_ib_rn_get_params(struct ib_device *device, u8 port_num,
     enum rdma_netdev_t type,
     struct rdma_netdev_alloc_params *params)
{
 if (type != RDMA_NETDEV_IPOIB)
  return -EOPNOTSUPP;

 return mlx5_rdma_rn_get_params(to_mdev(device)->mdev, device, params);
}
