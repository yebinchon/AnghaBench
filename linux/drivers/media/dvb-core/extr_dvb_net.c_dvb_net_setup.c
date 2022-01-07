
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int max_mtu; int flags; int * netdev_ops; int * header_ops; } ;


 int IFF_NOARP ;
 int dvb_header_ops ;
 int dvb_netdev_ops ;
 int ether_setup (struct net_device*) ;

__attribute__((used)) static void dvb_net_setup(struct net_device *dev)
{
 ether_setup(dev);

 dev->header_ops = &dvb_header_ops;
 dev->netdev_ops = &dvb_netdev_ops;
 dev->mtu = 4096;
 dev->max_mtu = 4096;

 dev->flags |= IFF_NOARP;
}
