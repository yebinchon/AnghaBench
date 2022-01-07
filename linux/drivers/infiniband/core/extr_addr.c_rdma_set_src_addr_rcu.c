
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int dummy; } ;
struct net_device {unsigned int flags; } ;
struct dst_entry {int dev; } ;


 int ENODEV ;
 int IFF_LOOPBACK ;
 scalar_t__ IS_ERR (struct net_device*) ;
 struct net_device* READ_ONCE (int ) ;
 int copy_src_l2_addr (struct rdma_dev_addr*,struct sockaddr const*,struct dst_entry const*,struct net_device*) ;
 int dev_net (struct net_device*) ;
 struct net_device* rdma_find_ndev_for_src_ip_rcu (int ,struct sockaddr const*) ;

__attribute__((used)) static int rdma_set_src_addr_rcu(struct rdma_dev_addr *dev_addr,
     unsigned int *ndev_flags,
     const struct sockaddr *dst_in,
     const struct dst_entry *dst)
{
 struct net_device *ndev = READ_ONCE(dst->dev);

 *ndev_flags = ndev->flags;

 if (ndev->flags & IFF_LOOPBACK) {






  ndev = rdma_find_ndev_for_src_ip_rcu(dev_net(ndev), dst_in);
  if (IS_ERR(ndev))
   return -ENODEV;
 }

 return copy_src_l2_addr(dev_addr, dst_in, dst, ndev);
}
