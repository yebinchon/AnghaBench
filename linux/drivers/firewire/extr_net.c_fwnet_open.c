
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fwnet_device {int lock; } ;


 int fwnet_broadcast_start (struct fwnet_device*) ;
 struct fwnet_device* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int set_carrier_state (struct fwnet_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int fwnet_open(struct net_device *net)
{
 struct fwnet_device *dev = netdev_priv(net);
 int ret;

 ret = fwnet_broadcast_start(dev);
 if (ret)
  return ret;

 netif_start_queue(net);

 spin_lock_irq(&dev->lock);
 set_carrier_state(dev);
 spin_unlock_irq(&dev->lock);

 return 0;
}
