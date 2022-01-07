
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_addr {int bound_dev_if; int net; int sgid_attr; } ;
struct net_device {int ifindex; } ;


 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 int dev_net (struct net_device*) ;
 struct net_device* rdma_read_gid_attr_ndev_rcu (int ) ;

__attribute__((used)) static int set_addr_netns_by_gid_rcu(struct rdma_dev_addr *addr)
{
 struct net_device *ndev;

 ndev = rdma_read_gid_attr_ndev_rcu(addr->sgid_attr);
 if (IS_ERR(ndev))
  return PTR_ERR(ndev);
 addr->net = dev_net(ndev);
 addr->bound_dev_if = ndev->ifindex;
 return 0;
}
