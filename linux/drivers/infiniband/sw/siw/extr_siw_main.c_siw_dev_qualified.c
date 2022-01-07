
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ARPHRD_IEEE802 ;
 scalar_t__ ARPHRD_LOOPBACK ;
 scalar_t__ loopback_enabled ;

__attribute__((used)) static int siw_dev_qualified(struct net_device *netdev)
{





 if (netdev->type == ARPHRD_ETHER || netdev->type == ARPHRD_IEEE802 ||
     (netdev->type == ARPHRD_LOOPBACK && loopback_enabled))
  return 1;

 return 0;
}
