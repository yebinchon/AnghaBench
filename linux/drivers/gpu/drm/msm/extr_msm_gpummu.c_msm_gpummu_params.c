
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_mmu {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ pt_base; } ;


 scalar_t__ TABLE_SIZE ;
 TYPE_1__* to_msm_gpummu (struct msm_mmu*) ;

void msm_gpummu_params(struct msm_mmu *mmu, dma_addr_t *pt_base,
  dma_addr_t *tran_error)
{
 dma_addr_t base = to_msm_gpummu(mmu)->pt_base;

 *pt_base = base;
 *tran_error = base + TABLE_SIZE;
}
