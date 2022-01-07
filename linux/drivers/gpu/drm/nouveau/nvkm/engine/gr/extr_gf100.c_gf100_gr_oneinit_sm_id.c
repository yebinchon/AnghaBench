
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gf100_gr {int tpc_max; int gpc_nr; int* tpc_nr; size_t sm_nr; TYPE_1__* sm; } ;
struct TYPE_2__ {int gpc; int tpc; } ;



void
gf100_gr_oneinit_sm_id(struct gf100_gr *gr)
{
 int tpc, gpc;
 for (tpc = 0; tpc < gr->tpc_max; tpc++) {
  for (gpc = 0; gpc < gr->gpc_nr; gpc++) {
   if (tpc < gr->tpc_nr[gpc]) {
    gr->sm[gr->sm_nr].gpc = gpc;
    gr->sm[gr->sm_nr].tpc = tpc;
    gr->sm_nr++;
   }
  }
 }
}
