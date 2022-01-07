
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int u6_addr32; } ;
struct in6_addr {TYPE_1__ in6_u; } ;


 int i40iw_copy_ip_htonl (int ,int *) ;
 scalar_t__ ipv6_addr_loopback (struct in6_addr*) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static bool i40iw_ipv6_is_loopback(u32 *loc_addr, u32 *rem_addr)
{
 struct in6_addr raddr6;

 i40iw_copy_ip_htonl(raddr6.in6_u.u6_addr32, rem_addr);
 return !memcmp(loc_addr, rem_addr, 16) || ipv6_addr_loopback(&raddr6);
}
