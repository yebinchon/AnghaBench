
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fwnet_device {int dummy; } ;


 int fwnet_broadcast_stop (struct fwnet_device*) ;
 struct fwnet_device* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int fwnet_stop(struct net_device *net)
{
 struct fwnet_device *dev = netdev_priv(net);

 netif_stop_queue(net);
 fwnet_broadcast_stop(dev);

 return 0;
}
