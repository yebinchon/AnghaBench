
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct flowi6 {int flowi6_oif; int daddr; int saddr; } ;
struct dst_entry {int dummy; } ;
typedef int fl6 ;


 int IPV6_ADDR_LINKLOCAL ;
 int init_net ;
 struct dst_entry* ip6_route_output (int *,int *,struct flowi6*) ;
 int ipv6_addr_type (int *) ;
 int memset (struct flowi6*,int ,int) ;

__attribute__((used)) static struct dst_entry *i40iw_get_dst_ipv6(struct sockaddr_in6 *src_addr,
         struct sockaddr_in6 *dst_addr)
{
 struct dst_entry *dst;
 struct flowi6 fl6;

 memset(&fl6, 0, sizeof(fl6));
 fl6.daddr = dst_addr->sin6_addr;
 fl6.saddr = src_addr->sin6_addr;
 if (ipv6_addr_type(&fl6.daddr) & IPV6_ADDR_LINKLOCAL)
  fl6.flowi6_oif = dst_addr->sin6_scope_id;

 dst = ip6_route_output(&init_net, ((void*)0), &fl6);
 return dst;
}
