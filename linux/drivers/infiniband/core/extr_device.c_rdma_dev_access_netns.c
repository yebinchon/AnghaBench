
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {int rdma_net; } ;
struct ib_device {TYPE_1__ coredev; } ;


 scalar_t__ ib_devices_shared_netns ;
 scalar_t__ net_eq (int ,struct net const*) ;
 int read_pnet (int *) ;

bool rdma_dev_access_netns(const struct ib_device *dev, const struct net *net)
{
 return (ib_devices_shared_netns ||
  net_eq(read_pnet(&dev->coredev.rdma_net), net));
}
