
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int state; int err_progress_check_timer; int this_idx; int dmawait; } ;
struct hfi1_devdata {unsigned int num_sdma; struct sdma_engine* per_sdma; } ;


 int dd_dev_err (struct hfi1_devdata*,char*,int ) ;
 int del_timer_sync (int *) ;
 int list_empty (int *) ;
 int sdma_event_e00_go_hw_down ;
 int sdma_finalput (int *) ;
 int sdma_process_event (struct sdma_engine*,int ) ;

void sdma_exit(struct hfi1_devdata *dd)
{
 unsigned this_idx;
 struct sdma_engine *sde;

 for (this_idx = 0; dd->per_sdma && this_idx < dd->num_sdma;
   ++this_idx) {
  sde = &dd->per_sdma[this_idx];
  if (!list_empty(&sde->dmawait))
   dd_dev_err(dd, "sde %u: dmawait list not empty!\n",
       sde->this_idx);
  sdma_process_event(sde, sdma_event_e00_go_hw_down);

  del_timer_sync(&sde->err_progress_check_timer);






  sdma_finalput(&sde->state);
 }
}
