
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_ifaddr {TYPE_1__* idev; int addr; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int AF_INET6 ;
 int addr_event (struct notifier_block*,unsigned long,struct sockaddr*,struct net_device*) ;

__attribute__((used)) static int inet6addr_event(struct notifier_block *this, unsigned long event,
      void *ptr)
{
 struct sockaddr_in6 in6;
 struct net_device *ndev;
 struct inet6_ifaddr *ifa6 = ptr;

 in6.sin6_family = AF_INET6;
 in6.sin6_addr = ifa6->addr;
 ndev = ifa6->idev->dev;

 return addr_event(this, event, (struct sockaddr *)&in6, ndev);
}
