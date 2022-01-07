
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ib_port_data {int netdev_lock; int netdev; } ;
struct ib_device {struct ib_port_data* port_data; } ;


 int EINVAL ;
 int add_ndev_hash (struct ib_port_data*) ;
 int alloc_port_data (struct ib_device*) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct net_device*) ;
 struct net_device* rcu_dereference_protected (int ,int ) ;
 int rdma_is_port_valid (struct ib_device*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_device_set_netdev(struct ib_device *ib_dev, struct net_device *ndev,
    unsigned int port)
{
 struct net_device *old_ndev;
 struct ib_port_data *pdata;
 unsigned long flags;
 int ret;





 ret = alloc_port_data(ib_dev);
 if (ret)
  return ret;

 if (!rdma_is_port_valid(ib_dev, port))
  return -EINVAL;

 pdata = &ib_dev->port_data[port];
 spin_lock_irqsave(&pdata->netdev_lock, flags);
 old_ndev = rcu_dereference_protected(
  pdata->netdev, lockdep_is_held(&pdata->netdev_lock));
 if (old_ndev == ndev) {
  spin_unlock_irqrestore(&pdata->netdev_lock, flags);
  return 0;
 }

 if (ndev)
  dev_hold(ndev);
 rcu_assign_pointer(pdata->netdev, ndev);
 spin_unlock_irqrestore(&pdata->netdev_lock, flags);

 add_ndev_hash(pdata);
 if (old_ndev)
  dev_put(old_ndev);

 return 0;
}
