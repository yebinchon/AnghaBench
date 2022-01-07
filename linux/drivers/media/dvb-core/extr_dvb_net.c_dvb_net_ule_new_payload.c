
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dvb_net_ule_handle {int ts_remain; int* from_where; int new_ts; TYPE_3__* priv; TYPE_2__* dev; int ts; } ;
struct TYPE_9__ {TYPE_2__* dev; } ;
struct TYPE_8__ {int ule_sndu_len; int need_pusi; int ule_dbit; int ule_sndu_remain; int ule_sndu_type; int ule_sndu_type_1; TYPE_4__* ule_skb; int ts_count; } ;
struct TYPE_6__ {int rx_dropped; int rx_length_errors; int rx_errors; } ;
struct TYPE_7__ {TYPE_1__ stats; int name; } ;


 scalar_t__ ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ TS_SZ ;
 TYPE_4__* dev_alloc_skb (scalar_t__) ;
 int pr_notice (char*,int ) ;
 int pr_warn (char*,int,...) ;
 int skb_reserve (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static int dvb_net_ule_new_payload(struct dvb_net_ule_handle *h)
{
 if (h->ts_remain < 2) {
  pr_warn("Invalid payload packing: only %d bytes left in TS.  Resyncing.\n",
   h->ts_remain);
  h->priv->ule_sndu_len = 0;
  h->priv->need_pusi = 1;
  h->ts += TS_SZ;
  return 1;
 }

 if (!h->priv->ule_sndu_len) {

  h->priv->ule_sndu_len = h->from_where[0] << 8 |
     h->from_where[1];
  if (h->priv->ule_sndu_len & 0x8000) {

   h->priv->ule_sndu_len &= 0x7FFF;
   h->priv->ule_dbit = 1;
  } else
   h->priv->ule_dbit = 0;

  if (h->priv->ule_sndu_len < 5) {
   pr_warn("%lu: Invalid ULE SNDU length %u. Resyncing.\n",
    h->priv->ts_count,
    h->priv->ule_sndu_len);
   h->dev->stats.rx_errors++;
   h->dev->stats.rx_length_errors++;
   h->priv->ule_sndu_len = 0;
   h->priv->need_pusi = 1;
   h->new_ts = 1;
   h->ts += TS_SZ;
   h->priv->ts_count++;
   return 1;
  }
  h->ts_remain -= 2;
  h->from_where += 2;
 }

 h->priv->ule_sndu_remain = h->priv->ule_sndu_len + 2;







 switch (h->ts_remain) {
 case 1:
  h->priv->ule_sndu_remain--;
  h->priv->ule_sndu_type = h->from_where[0] << 8;


  h->priv->ule_sndu_type_1 = 1;
  h->ts_remain -= 1;
  h->from_where += 1;

 case 0:
  h->new_ts = 1;
  h->ts += TS_SZ;
  h->priv->ts_count++;
  return 1;

 default:

  if (h->priv->ule_sndu_type_1) {
   h->priv->ule_sndu_type_1 = 0;
   h->priv->ule_sndu_type |= h->from_where[0];
   h->from_where += 1;
   h->ts_remain -= 1;
  } else {

   h->priv->ule_sndu_type = h->from_where[0] << 8 |
       h->from_where[1];
   h->from_where += 2;
   h->ts_remain -= 2;
  }
  break;
 }
 h->priv->ule_skb = dev_alloc_skb(h->priv->ule_sndu_len +
      ETH_HLEN + ETH_ALEN);
 if (!h->priv->ule_skb) {
  pr_notice("%s: Memory squeeze, dropping packet.\n",
     h->dev->name);
  h->dev->stats.rx_dropped++;
  return -1;
 }


 h->priv->ule_sndu_remain = h->priv->ule_sndu_len;
 h->priv->ule_skb->dev = h->dev;




 skb_reserve(h->priv->ule_skb, ETH_HLEN + ETH_ALEN);

 return 0;
}
