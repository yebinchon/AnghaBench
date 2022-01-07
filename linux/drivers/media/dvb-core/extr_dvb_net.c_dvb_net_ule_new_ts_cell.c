
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_net_ule_handle {int* ts; int ts_remain; int* from_where; TYPE_3__* priv; TYPE_2__* dev; } ;
struct TYPE_6__ {int need_pusi; int ts_count; scalar_t__ ule_skb; } ;
struct TYPE_4__ {int rx_frame_errors; int rx_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int TS_SC ;
 int TS_SYNC ;
 int TS_SZ ;
 int TS_TEI ;
 int dev_kfree_skb (scalar_t__) ;
 int hexdump (int *,int) ;
 int memcpy (int *,int*,int) ;
 int pr_warn (char*,int ,int,int,int) ;
 int reset_ule (TYPE_3__*) ;
 scalar_t__ ule_dump ;
 int * ule_hist ;
 int * ule_where ;

__attribute__((used)) static int dvb_net_ule_new_ts_cell(struct dvb_net_ule_handle *h)
{
 if ((h->ts[0] != TS_SYNC) || (h->ts[1] & TS_TEI) ||
     ((h->ts[3] & TS_SC) != 0)) {
  pr_warn("%lu: Invalid TS cell: SYNC %#x, TEI %u, SC %#x.\n",
   h->priv->ts_count, h->ts[0],
   (h->ts[1] & TS_TEI) >> 7,
   (h->ts[3] & TS_SC) >> 6);


  if (h->priv->ule_skb) {
   dev_kfree_skb(h->priv->ule_skb);

   h->dev->stats.rx_errors++;
   h->dev->stats.rx_frame_errors++;
  }
  reset_ule(h->priv);
  h->priv->need_pusi = 1;


  h->ts += TS_SZ;
  h->priv->ts_count++;
  return 1;
 }

 h->ts_remain = 184;
 h->from_where = h->ts + 4;

 return 0;
}
