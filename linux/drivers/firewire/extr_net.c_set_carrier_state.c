
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnet_device {int peer_count; int netdev; } ;


 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static void set_carrier_state(struct fwnet_device *dev)
{
 if (dev->peer_count > 1)
  netif_carrier_on(dev->netdev);
 else
  netif_carrier_off(dev->netdev);
}
