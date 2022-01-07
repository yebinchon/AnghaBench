
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int dummy; } ;
struct hfi1_devdata {unsigned int num_sdma; struct sdma_engine* per_sdma; } ;


 int sdma_event_e30_go_running ;
 int sdma_process_event (struct sdma_engine*,int ) ;

void sdma_all_running(struct hfi1_devdata *dd)
{
 struct sdma_engine *sde;
 unsigned int i;


 for (i = 0; i < dd->num_sdma; ++i) {
  sde = &dd->per_sdma[i];
  sdma_process_event(sde, sdma_event_e30_go_running);
 }
}
