
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union rdma_network_hdr {int ibgrh; int roce4grh; } ;
typedef int u8 ;
struct ipv6hdr {int version; } ;
struct iphdr {int version; int ihl; scalar_t__ check; } ;
typedef int ip4h_checked ;


 scalar_t__ ip_fast_csum (int *,int) ;
 int memcpy (struct iphdr*,struct iphdr const*,int) ;

int ib_get_rdma_header_version(const union rdma_network_hdr *hdr)
{
 const struct iphdr *ip4h = (struct iphdr *)&hdr->roce4grh;
 struct iphdr ip4h_checked;
 const struct ipv6hdr *ip6h = (struct ipv6hdr *)&hdr->ibgrh;




 if (ip6h->version != 6)
  return (ip4h->version == 4) ? 4 : 0;





 if (ip4h->ihl != 5)
  return 6;





 memcpy(&ip4h_checked, ip4h, sizeof(ip4h_checked));
 ip4h_checked.check = 0;
 ip4h_checked.check = ip_fast_csum((u8 *)&ip4h_checked, 5);

 if (ip4h->check == ip4h_checked.check)
  return 4;
 return 6;
}
