
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct rdma_id_private {int afonly; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {int ip6; TYPE_2__ ip4; } ;
struct cma_hdr {TYPE_3__ dst_addr; } ;
typedef int ip6_addr ;
typedef int __be32 ;





 scalar_t__ cma_any_addr (struct sockaddr*) ;
 int cma_get_ip_ver (struct cma_hdr const*) ;
 struct sockaddr* cma_src_addr (struct rdma_id_private*) ;
 int memcmp (int *,struct in6_addr*,int) ;

__attribute__((used)) static bool cma_match_private_data(struct rdma_id_private *id_priv,
       const struct cma_hdr *hdr)
{
 struct sockaddr *addr = cma_src_addr(id_priv);
 __be32 ip4_addr;
 struct in6_addr ip6_addr;

 if (cma_any_addr(addr) && !id_priv->afonly)
  return 1;

 switch (addr->sa_family) {
 case 129:
  ip4_addr = ((struct sockaddr_in *)addr)->sin_addr.s_addr;
  if (cma_get_ip_ver(hdr) != 4)
   return 0;
  if (!cma_any_addr(addr) &&
      hdr->dst_addr.ip4.addr != ip4_addr)
   return 0;
  break;
 case 128:
  ip6_addr = ((struct sockaddr_in6 *)addr)->sin6_addr;
  if (cma_get_ip_ver(hdr) != 6)
   return 0;
  if (!cma_any_addr(addr) &&
      memcmp(&hdr->dst_addr.ip6, &ip6_addr, sizeof(ip6_addr)))
   return 0;
  break;
 case 130:
  return 1;
 default:
  return 0;
 }

 return 1;
}
