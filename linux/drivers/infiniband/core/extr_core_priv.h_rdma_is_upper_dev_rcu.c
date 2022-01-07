
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netdev_has_upper_dev_all_rcu (struct net_device*,struct net_device*) ;

__attribute__((used)) static inline bool rdma_is_upper_dev_rcu(struct net_device *dev,
      struct net_device *upper)
{
 return netdev_has_upper_dev_all_rcu(dev, upper);
}
