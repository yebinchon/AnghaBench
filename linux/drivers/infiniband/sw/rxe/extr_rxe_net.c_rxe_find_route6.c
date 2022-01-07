
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;



__attribute__((used)) static struct dst_entry *rxe_find_route6(struct net_device *ndev,
      struct in6_addr *saddr,
      struct in6_addr *daddr)
{
 return ((void*)0);
}
