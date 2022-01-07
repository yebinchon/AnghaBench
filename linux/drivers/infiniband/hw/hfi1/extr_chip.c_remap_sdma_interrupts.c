
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 scalar_t__ IS_SDMA_IDLE_START ;
 scalar_t__ IS_SDMA_PROGRESS_START ;
 scalar_t__ IS_SDMA_START ;
 int remap_intr (struct hfi1_devdata*,scalar_t__,int) ;

void remap_sdma_interrupts(struct hfi1_devdata *dd, int engine, int msix_intr)
{







 remap_intr(dd, IS_SDMA_START + engine, msix_intr);
 remap_intr(dd, IS_SDMA_PROGRESS_START + engine, msix_intr);
 remap_intr(dd, IS_SDMA_IDLE_START + engine, msix_intr);
}
