
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_net_ule_handle {int* ts; int* from_where; int ts_remain; int error; TYPE_3__* priv; TYPE_2__* dev; } ;
struct TYPE_6__ {int tscc; int need_pusi; int ule_sndu_remain; scalar_t__ ule_skb; int ts_count; } ;
struct TYPE_4__ {int rx_length_errors; int rx_errors; int rx_frame_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int TS_PUSI ;
 int dev_kfree_skb (scalar_t__) ;
 int pr_warn (char*,int ,int,...) ;
 int reset_ule (TYPE_3__*) ;

__attribute__((used)) static int dvb_net_ule_new_ts(struct dvb_net_ule_handle *h)
{

 if ((h->ts[3] & 0x0F) == h->priv->tscc)
  h->priv->tscc = (h->priv->tscc + 1) & 0x0F;
 else {

  pr_warn("%lu: TS discontinuity: got %#x, expected %#x.\n",
   h->priv->ts_count, h->ts[3] & 0x0F,
   h->priv->tscc);

  if (h->priv->ule_skb) {
   dev_kfree_skb(h->priv->ule_skb);


   h->dev->stats.rx_errors++;
   h->dev->stats.rx_frame_errors++;
  }
  reset_ule(h->priv);

  h->priv->need_pusi = 1;
  return 1;
 }






 if (h->ts[1] & TS_PUSI) {
  if (!h->priv->need_pusi) {
   if (!(*h->from_where < (h->ts_remain-1)) ||
       *h->from_where != h->priv->ule_sndu_remain) {




    pr_warn("%lu: Invalid pointer field: %u.\n",
     h->priv->ts_count,
     *h->from_where);





    if (h->priv->ule_skb) {
     h->error = 1;
     dev_kfree_skb(h->priv->ule_skb);
    }

    if (h->error || h->priv->ule_sndu_remain) {
     h->dev->stats.rx_errors++;
     h->dev->stats.rx_frame_errors++;
     h->error = 0;
    }

    reset_ule(h->priv);
    h->priv->need_pusi = 1;
    return 1;
   }




   h->from_where += 1;
   h->ts_remain -= 1;
  } else
   h->priv->need_pusi = 0;

  if (h->priv->ule_sndu_remain > 183) {




   h->dev->stats.rx_errors++;
   h->dev->stats.rx_length_errors++;
   pr_warn("%lu: Expected %d more SNDU bytes, but got PUSI (pf %d, h->ts_remain %d).  Flushing incomplete payload.\n",
    h->priv->ts_count,
    h->priv->ule_sndu_remain,
    h->ts[4], h->ts_remain);
   dev_kfree_skb(h->priv->ule_skb);

   reset_ule(h->priv);




   h->from_where += h->ts[4];
   h->ts_remain -= h->ts[4];
  }
 }
 return 0;
}
