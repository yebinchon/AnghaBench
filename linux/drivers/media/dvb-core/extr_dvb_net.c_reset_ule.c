
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_net_priv {int ule_dbit; scalar_t__ ule_bridged; scalar_t__ ule_sndu_remain; scalar_t__ ule_sndu_type_1; scalar_t__ ule_sndu_type; scalar_t__ ule_sndu_len; int * ule_next_hdr; int * ule_skb; } ;



__attribute__((used)) static inline void reset_ule( struct dvb_net_priv *p )
{
 p->ule_skb = ((void*)0);
 p->ule_next_hdr = ((void*)0);
 p->ule_sndu_len = 0;
 p->ule_sndu_type = 0;
 p->ule_sndu_type_1 = 0;
 p->ule_sndu_remain = 0;
 p->ule_dbit = 0xFF;
 p->ule_bridged = 0;
}
