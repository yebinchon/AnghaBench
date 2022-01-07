
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; int len; void* source; void* dest; } ;
struct sk_buff {int len; } ;
typedef void* __be16 ;


 int __skb_push (struct sk_buff*,int) ;
 int htons (int ) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static void prepare_udp_hdr(struct sk_buff *skb, __be16 src_port,
       __be16 dst_port)
{
 struct udphdr *udph;

 __skb_push(skb, sizeof(*udph));
 skb_reset_transport_header(skb);
 udph = udp_hdr(skb);

 udph->dest = dst_port;
 udph->source = src_port;
 udph->len = htons(skb->len);
 udph->check = 0;
}
