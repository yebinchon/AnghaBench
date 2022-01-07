
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 scalar_t__ netif_is_bond_master (struct net_device*) ;
 int netif_is_bond_slave (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ rdma_is_upper_dev_rcu (struct net_device*,struct net_device*) ;

__attribute__((used)) static bool
is_ndev_for_default_gid_filter(struct ib_device *ib_dev, u8 port,
          struct net_device *rdma_ndev, void *cookie)
{
 struct net_device *cookie_ndev = cookie;
 bool res;

 if (!rdma_ndev)
  return 0;

 rcu_read_lock();
 res = ((cookie_ndev == rdma_ndev && !netif_is_bond_slave(rdma_ndev)) ||
        (netif_is_bond_master(cookie_ndev) &&
  rdma_is_upper_dev_rcu(rdma_ndev, cookie_ndev)));

 rcu_read_unlock();
 return res;
}
