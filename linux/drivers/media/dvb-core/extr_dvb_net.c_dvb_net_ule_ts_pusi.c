
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_net_ule_handle {int* ts; int ts_remain; int* from_where; TYPE_1__* priv; scalar_t__ skipped; } ;
struct TYPE_2__ {int tscc; int ts_count; } ;


 int TS_PUSI ;
 int TS_SZ ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int dvb_net_ule_ts_pusi(struct dvb_net_ule_handle *h)
{
 if (h->ts[1] & TS_PUSI) {


  h->priv->tscc = h->ts[3] & 0x0F;

  if (h->ts[4] > h->ts_remain) {
   pr_err("%lu: Invalid ULE packet (pointer field %d)\n",
    h->priv->ts_count, h->ts[4]);
   h->ts += TS_SZ;
   h->priv->ts_count++;
   return 1;
  }

  h->from_where = &h->ts[5] + h->ts[4];
  h->ts_remain -= 1 + h->ts[4];
  h->skipped = 0;
 } else {
  h->skipped++;
  h->ts += TS_SZ;
  h->priv->ts_count++;
  return 1;
 }

 return 0;
}
