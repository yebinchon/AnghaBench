
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ reg_state; } ;
struct ib_port_data {int netdev_lock; int netdev; } ;
struct TYPE_2__ {struct net_device* (* get_netdev ) (struct ib_device*,unsigned int) ;} ;
struct ib_device {TYPE_1__ ops; struct ib_port_data* port_data; } ;


 scalar_t__ NETREG_REGISTERED ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int lockdep_is_held (int *) ;
 struct net_device* rcu_dereference_protected (int ,int ) ;
 int rdma_is_port_valid (struct ib_device*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct net_device* stub1 (struct ib_device*,unsigned int) ;

struct net_device *ib_device_get_netdev(struct ib_device *ib_dev,
     unsigned int port)
{
 struct ib_port_data *pdata;
 struct net_device *res;

 if (!rdma_is_port_valid(ib_dev, port))
  return ((void*)0);

 pdata = &ib_dev->port_data[port];





 if (ib_dev->ops.get_netdev)
  res = ib_dev->ops.get_netdev(ib_dev, port);
 else {
  spin_lock(&pdata->netdev_lock);
  res = rcu_dereference_protected(
   pdata->netdev, lockdep_is_held(&pdata->netdev_lock));
  if (res)
   dev_hold(res);
  spin_unlock(&pdata->netdev_lock);
 }





 if (res && res->reg_state != NETREG_REGISTERED) {
  dev_put(res);
  return ((void*)0);
 }

 return res;
}
