
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {scalar_t__* sdma_head_dma; } ;


 int qib_sdma_7220_setlengen (struct qib_pportdata*) ;
 int qib_sdma_update_7220_tail (struct qib_pportdata*,int ) ;

__attribute__((used)) static void qib_7220_sdma_hw_start_up(struct qib_pportdata *ppd)
{
 qib_sdma_7220_setlengen(ppd);
 qib_sdma_update_7220_tail(ppd, 0);
 ppd->sdma_head_dma[0] = 0;
}
