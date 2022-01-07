
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int num_sdma; int * per_sdma; int sdma_unfreeze_count; } ;
typedef enum sdma_events { ____Placeholder_sdma_events } sdma_events ;


 int atomic_set (int *,int) ;
 int sdma_event_e80_hw_freeze ;
 int sdma_event_e85_link_down ;
 int sdma_process_event (int *,int) ;

void sdma_freeze_notify(struct hfi1_devdata *dd, int link_down)
{
 int i;
 enum sdma_events event = link_down ? sdma_event_e85_link_down :
          sdma_event_e80_hw_freeze;


 atomic_set(&dd->sdma_unfreeze_count, dd->num_sdma);


 for (i = 0; i < dd->num_sdma; i++)
  sdma_process_event(&dd->per_sdma[i], event);


}
