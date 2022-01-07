
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 int bond_delete_netdev_default_gids (struct ib_device*,int ,struct net_device*,struct net_device*) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void del_netdev_default_ips_join(struct ib_device *ib_dev, u8 port,
     struct net_device *rdma_ndev,
     void *cookie)
{
 struct net_device *master_ndev;

 rcu_read_lock();
 master_ndev = netdev_master_upper_dev_get_rcu(rdma_ndev);
 if (master_ndev)
  dev_hold(master_ndev);
 rcu_read_unlock();

 if (master_ndev) {
  bond_delete_netdev_default_gids(ib_dev, port, rdma_ndev,
      master_ndev);
  dev_put(master_ndev);
 }
}
