
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_ib {int sib_addr; } ;
struct sockaddr {int sa_family; } ;





 int ib_addr_loopback (int *) ;
 int ipv4_is_loopback (int ) ;
 int ipv6_addr_loopback (int *) ;

__attribute__((used)) static inline bool cma_loopback_addr(const struct sockaddr *addr)
{
 switch (addr->sa_family) {
 case 129:
  return ipv4_is_loopback(
   ((struct sockaddr_in *)addr)->sin_addr.s_addr);
 case 128:
  return ipv6_addr_loopback(
   &((struct sockaddr_in6 *)addr)->sin6_addr);
 case 130:
  return ib_addr_loopback(
   &((struct sockaddr_ib *)addr)->sib_addr);
 default:
  return 0;
 }
}
