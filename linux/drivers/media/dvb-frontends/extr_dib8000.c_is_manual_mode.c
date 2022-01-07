
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dtv_frontend_properties {scalar_t__ delivery_system; scalar_t__ transmission_mode; scalar_t__ guard_interval; int isdbt_layer_enabled; TYPE_1__* layer; } ;
struct TYPE_2__ {int segment_count; scalar_t__ modulation; scalar_t__ fec; } ;


 scalar_t__ FEC_AUTO ;
 scalar_t__ GUARD_INTERVAL_AUTO ;
 scalar_t__ QAM_AUTO ;
 scalar_t__ SYS_ISDBT ;
 scalar_t__ TRANSMISSION_MODE_AUTO ;
 int dprintk (char*,...) ;

__attribute__((used)) static int is_manual_mode(struct dtv_frontend_properties *c)
{
 int i, n_segs = 0;


 if (c->delivery_system != SYS_ISDBT)
  return 0;




 if (c->transmission_mode == TRANSMISSION_MODE_AUTO) {
  dprintk("transmission mode auto\n");
  return 0;
 }




 if (c->guard_interval == GUARD_INTERVAL_AUTO) {
  dprintk("guard interval auto\n");
  return 0;
 }





 if (!c->isdbt_layer_enabled) {
  dprintk("no layer modulation specified\n");
  return 0;
 }





 for (i = 0; i < 3; i++) {
  if (!(c->isdbt_layer_enabled & 1 << i))
   continue;

  if ((c->layer[i].segment_count > 13) ||
      (c->layer[i].segment_count == 0)) {
   c->isdbt_layer_enabled &= ~(1 << i);
   continue;
  }

  n_segs += c->layer[i].segment_count;

  if ((c->layer[i].modulation == QAM_AUTO) ||
      (c->layer[i].fec == FEC_AUTO)) {
   dprintk("layer %c has either modulation or FEC auto\n",
    'A' + i);
   return 0;
  }
 }





 if (n_segs == 0 || n_segs > 13) {
  dprintk("number of segments is invalid\n");
  return 0;
 }


 return 1;
}
