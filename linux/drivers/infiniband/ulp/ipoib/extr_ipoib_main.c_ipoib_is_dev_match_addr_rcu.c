
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in_device {int dummy; } ;
typedef int __be32 ;




 int CONFIG_IPV6 ;
 int IS_ENABLED (int ) ;
 int RT_SCOPE_HOST ;
 struct net* dev_net (struct net_device*) ;
 struct in_device* in_dev_get (struct net_device*) ;
 int in_dev_put (struct in_device*) ;
 int inet_confirm_addr (struct net*,struct in_device*,int ,int ,int ) ;
 int ipv6_chk_addr (struct net*,int *,struct net_device*,int) ;

__attribute__((used)) static bool ipoib_is_dev_match_addr_rcu(const struct sockaddr *addr,
     struct net_device *dev)
{
 struct net *net = dev_net(dev);
 struct in_device *in_dev;
 struct sockaddr_in *addr_in = (struct sockaddr_in *)addr;
 struct sockaddr_in6 *addr_in6 = (struct sockaddr_in6 *)addr;
 __be32 ret_addr;

 switch (addr->sa_family) {
 case 129:
  in_dev = in_dev_get(dev);
  if (!in_dev)
   return 0;

  ret_addr = inet_confirm_addr(net, in_dev, 0,
          addr_in->sin_addr.s_addr,
          RT_SCOPE_HOST);
  in_dev_put(in_dev);
  if (ret_addr)
   return 1;

  break;
 case 128:
  if (IS_ENABLED(CONFIG_IPV6) &&
      ipv6_chk_addr(net, &addr_in6->sin6_addr, dev, 1))
   return 1;

  break;
 }
 return 0;
}
