
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int num_sdma; struct sdma_engine* per_sdma; } ;


 int sdma_wait_for_packet_egress (struct sdma_engine*,int ) ;

void sdma_wait(struct hfi1_devdata *dd)
{
 int i;

 for (i = 0; i < dd->num_sdma; i++) {
  struct sdma_engine *sde = &dd->per_sdma[i];

  sdma_wait_for_packet_egress(sde, 0);
 }
}
