
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dev_hold (struct net_device*) ;
 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct net_device *ipoib_get_master_net_dev(struct net_device *dev)
{
 struct net_device *master;

 rcu_read_lock();
 master = netdev_master_upper_dev_get_rcu(dev);
 if (master)
  dev_hold(master);
 rcu_read_unlock();

 if (master)
  return master;

 dev_hold(dev);
 return dev;
}
