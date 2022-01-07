
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_walk_data {struct net_device* result; struct sockaddr const* addr; } ;


 int dev_hold (struct net_device*) ;
 scalar_t__ ipoib_is_dev_match_addr_rcu (struct sockaddr const*,struct net_device*) ;
 int ipoib_upper_walk ;
 int netdev_walk_all_upper_dev_rcu (struct net_device*,int ,struct ipoib_walk_data*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct net_device *ipoib_get_net_dev_match_addr(
  const struct sockaddr *addr, struct net_device *dev)
{
 struct ipoib_walk_data data = {
  .addr = addr,
 };

 rcu_read_lock();
 if (ipoib_is_dev_match_addr_rcu(addr, dev)) {
  dev_hold(dev);
  data.result = dev;
  goto out;
 }

 netdev_walk_all_upper_dev_rcu(dev, ipoib_upper_walk, &data);
out:
 rcu_read_unlock();
 return data.result;
}
