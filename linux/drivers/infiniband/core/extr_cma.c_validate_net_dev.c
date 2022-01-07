
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct net_device {int dummy; } ;




 int validate_ipv4_net_dev (struct net_device*,struct sockaddr_in const*,struct sockaddr_in const*) ;
 int validate_ipv6_net_dev (struct net_device*,struct sockaddr_in6 const*,struct sockaddr_in6 const*) ;

__attribute__((used)) static bool validate_net_dev(struct net_device *net_dev,
        const struct sockaddr *daddr,
        const struct sockaddr *saddr)
{
 const struct sockaddr_in *daddr4 = (const struct sockaddr_in *)daddr;
 const struct sockaddr_in *saddr4 = (const struct sockaddr_in *)saddr;
 const struct sockaddr_in6 *daddr6 = (const struct sockaddr_in6 *)daddr;
 const struct sockaddr_in6 *saddr6 = (const struct sockaddr_in6 *)saddr;

 switch (daddr->sa_family) {
 case 129:
  return saddr->sa_family == 129 &&
         validate_ipv4_net_dev(net_dev, daddr4, saddr4);

 case 128:
  return saddr->sa_family == 128 &&
         validate_ipv6_net_dev(net_dev, daddr6, saddr6);

 default:
  return 0;
 }
}
