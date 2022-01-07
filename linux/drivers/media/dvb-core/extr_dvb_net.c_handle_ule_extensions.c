
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_net_priv {scalar_t__ ule_sndu_type; int ule_next_hdr; TYPE_1__* ule_skb; } ;
struct TYPE_2__ {int data; } ;


 scalar_t__ ETH_P_802_3_MIN ;
 int handle_one_ule_extension (struct dvb_net_priv*) ;
 int pr_debug (char*,int ,int,int,int) ;

__attribute__((used)) static int handle_ule_extensions( struct dvb_net_priv *p )
{
 int total_ext_len = 0, l;

 p->ule_next_hdr = p->ule_skb->data;
 do {
  l = handle_one_ule_extension( p );
  if (l < 0)
   return l;
  total_ext_len += l;
  pr_debug("ule_next_hdr=%p, ule_sndu_type=%i, l=%i, total_ext_len=%i\n",
    p->ule_next_hdr, (int)p->ule_sndu_type,
    l, total_ext_len);

 } while (p->ule_sndu_type < ETH_P_802_3_MIN);

 return total_ext_len;
}
