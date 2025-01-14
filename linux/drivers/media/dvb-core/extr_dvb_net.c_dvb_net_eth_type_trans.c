
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int pkt_type; } ;
struct net_device {int broadcast; int hard_header_len; } ;
struct ethhdr {int* h_dest; int h_proto; } ;
typedef int __be16 ;


 int ETH_P_802_2 ;
 int ETH_P_802_3 ;
 scalar_t__ ETH_P_802_3_MIN ;
 int PACKET_BROADCAST ;
 int PACKET_MULTICAST ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 scalar_t__ ether_addr_equal (int*,int ) ;
 int htons (int ) ;
 scalar_t__ ntohs (int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static __be16 dvb_net_eth_type_trans(struct sk_buff *skb,
          struct net_device *dev)
{
 struct ethhdr *eth;
 unsigned char *rawp;

 skb_reset_mac_header(skb);
 skb_pull(skb,dev->hard_header_len);
 eth = eth_hdr(skb);

 if (*eth->h_dest & 1) {
  if(ether_addr_equal(eth->h_dest,dev->broadcast))
   skb->pkt_type=PACKET_BROADCAST;
  else
   skb->pkt_type=PACKET_MULTICAST;
 }

 if (ntohs(eth->h_proto) >= ETH_P_802_3_MIN)
  return eth->h_proto;

 rawp = skb->data;







 if (*(unsigned short *)rawp == 0xFFFF)
  return htons(ETH_P_802_3);




 return htons(ETH_P_802_2);
}
