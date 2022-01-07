
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct udphdr {void* check; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rxe_pkt_info {size_t opcode; int * hdr; int rxe; } ;
struct rxe_bth {int qpn; } ;
struct ipv6hdr {int priority; int hop_limit; int flow_lbl; } ;
struct iphdr {int ttl; int tos; void* check; } ;
struct TYPE_2__ {int length; } ;


 int BTH_QPN_MASK ;
 void* CSUM_MANGLED_0 ;
 int ETH_P_IP ;
 int RXE_BTH_BYTES ;
 int cpu_to_be32 (int ) ;
 scalar_t__ htons (int ) ;
 int * ip_hdr (struct sk_buff*) ;
 int * ipv6_hdr (struct sk_buff*) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,int,int) ;
 int rxe_crc32 (int ,int,int *,int) ;
 TYPE_1__* rxe_opcode ;

u32 rxe_icrc_hdr(struct rxe_pkt_info *pkt, struct sk_buff *skb)
{
 unsigned int bth_offset = 0;
 struct iphdr *ip4h = ((void*)0);
 struct ipv6hdr *ip6h = ((void*)0);
 struct udphdr *udph;
 struct rxe_bth *bth;
 int crc;
 int length;
 int hdr_size = sizeof(struct udphdr) +
  (skb->protocol == htons(ETH_P_IP) ?
  sizeof(struct iphdr) : sizeof(struct ipv6hdr));



 u8 pshdr[sizeof(struct udphdr) +
  sizeof(struct ipv6hdr) +
  RXE_BTH_BYTES];




 crc = 0xdebb20e3;

 if (skb->protocol == htons(ETH_P_IP)) {
  memcpy(pshdr, ip_hdr(skb), hdr_size);
  ip4h = (struct iphdr *)pshdr;
  udph = (struct udphdr *)(ip4h + 1);

  ip4h->ttl = 0xff;
  ip4h->check = CSUM_MANGLED_0;
  ip4h->tos = 0xff;
 } else {
  memcpy(pshdr, ipv6_hdr(skb), hdr_size);
  ip6h = (struct ipv6hdr *)pshdr;
  udph = (struct udphdr *)(ip6h + 1);

  memset(ip6h->flow_lbl, 0xff, sizeof(ip6h->flow_lbl));
  ip6h->priority = 0xf;
  ip6h->hop_limit = 0xff;
 }
 udph->check = CSUM_MANGLED_0;

 bth_offset += hdr_size;

 memcpy(&pshdr[bth_offset], pkt->hdr, RXE_BTH_BYTES);
 bth = (struct rxe_bth *)&pshdr[bth_offset];


 bth->qpn |= cpu_to_be32(~BTH_QPN_MASK);

 length = hdr_size + RXE_BTH_BYTES;
 crc = rxe_crc32(pkt->rxe, crc, pshdr, length);


 crc = rxe_crc32(pkt->rxe, crc, pkt->hdr + RXE_BTH_BYTES,
   rxe_opcode[pkt->opcode].length - RXE_BTH_BYTES);
 return crc;
}
