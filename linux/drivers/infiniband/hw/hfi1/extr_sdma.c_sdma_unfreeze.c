
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int num_sdma; int * per_sdma; } ;


 int sdma_event_e82_hw_unfreeze ;
 int sdma_process_event (int *,int ) ;

void sdma_unfreeze(struct hfi1_devdata *dd)
{
 int i;


 for (i = 0; i < dd->num_sdma; i++)
  sdma_process_event(&dd->per_sdma[i],
       sdma_event_e82_hw_unfreeze);
}
