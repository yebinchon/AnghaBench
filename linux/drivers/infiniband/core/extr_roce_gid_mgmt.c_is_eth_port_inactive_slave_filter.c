
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 scalar_t__ BONDING_SLAVE_STATE_INACTIVE ;
 scalar_t__ is_eth_active_slave_of_bonding_rcu (struct net_device*,struct net_device*) ;
 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool
is_eth_port_inactive_slave_filter(struct ib_device *ib_dev, u8 port,
      struct net_device *rdma_ndev, void *cookie)
{
 struct net_device *master_dev;
 bool res;

 if (!rdma_ndev)
  return 0;

 rcu_read_lock();
 master_dev = netdev_master_upper_dev_get_rcu(rdma_ndev);
 res = is_eth_active_slave_of_bonding_rcu(rdma_ndev, master_dev) ==
  BONDING_SLAVE_STATE_INACTIVE;
 rcu_read_unlock();

 return res;
}
