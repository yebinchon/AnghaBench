
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union rdma_network_hdr {int ibgrh; int roce4grh; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rxe_pkt_info {int dummy; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 struct sk_buff* PKT_TO_SKB (struct rxe_pkt_info*) ;
 scalar_t__ htons (int ) ;
 int ip_hdr (struct sk_buff*) ;
 int ipv6_hdr (struct sk_buff*) ;
 int memcpy (int *,int ,int) ;
 int memset (union rdma_network_hdr*,int ,int) ;

__attribute__((used)) static void build_rdma_network_hdr(union rdma_network_hdr *hdr,
       struct rxe_pkt_info *pkt)
{
 struct sk_buff *skb = PKT_TO_SKB(pkt);

 memset(hdr, 0, sizeof(*hdr));
 if (skb->protocol == htons(ETH_P_IP))
  memcpy(&hdr->roce4grh, ip_hdr(skb), sizeof(hdr->roce4grh));
 else if (skb->protocol == htons(ETH_P_IPV6))
  memcpy(&hdr->ibgrh, ipv6_hdr(skb), sizeof(hdr->ibgrh));
}
