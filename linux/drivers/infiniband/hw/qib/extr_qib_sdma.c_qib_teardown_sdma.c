
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int sdma_state; } ;


 int free_sdma (struct qib_pportdata*) ;
 int qib_sdma_event_e00_go_hw_down ;
 int qib_sdma_process_event (struct qib_pportdata*,int ) ;
 int sdma_finalput (int *) ;

void qib_teardown_sdma(struct qib_pportdata *ppd)
{
 qib_sdma_process_event(ppd, qib_sdma_event_e00_go_hw_down);






 sdma_finalput(&ppd->sdma_state);

 free_sdma(ppd);
}
