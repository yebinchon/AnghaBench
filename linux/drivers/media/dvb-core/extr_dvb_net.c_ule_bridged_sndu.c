
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethhdr {int h_proto; } ;
struct dvb_net_priv {int ule_next_hdr; int ule_sndu_len; int ule_bridged; TYPE_1__* ule_skb; } ;
struct TYPE_2__ {int data; } ;


 int ETH_P_802_3_MIN ;
 int ntohs (int ) ;

__attribute__((used)) static int ule_bridged_sndu( struct dvb_net_priv *p )
{
 struct ethhdr *hdr = (struct ethhdr*) p->ule_next_hdr;
 if(ntohs(hdr->h_proto) < ETH_P_802_3_MIN) {
  int framelen = p->ule_sndu_len - ((p->ule_next_hdr+sizeof(struct ethhdr)) - p->ule_skb->data);

  if(framelen != ntohs(hdr->h_proto)) {
   return -1;
  }
 }






 p->ule_bridged = 1;
 return 0;
}
