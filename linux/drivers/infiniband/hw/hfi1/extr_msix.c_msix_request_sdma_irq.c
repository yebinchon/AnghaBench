
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int msix_intr; int this_idx; int dd; } ;


 int IRQ_SDMA ;
 int msix_request_irq (int ,struct sdma_engine*,int ,int *,int ,int ) ;
 int remap_sdma_interrupts (int ,int ,int) ;
 int sdma_interrupt ;

int msix_request_sdma_irq(struct sdma_engine *sde)
{
 int nr;

 nr = msix_request_irq(sde->dd, sde, sdma_interrupt, ((void*)0),
         sde->this_idx, IRQ_SDMA);
 if (nr < 0)
  return nr;
 sde->msix_intr = nr;
 remap_sdma_interrupts(sde->dd, sde->this_idx, nr);

 return 0;
}
