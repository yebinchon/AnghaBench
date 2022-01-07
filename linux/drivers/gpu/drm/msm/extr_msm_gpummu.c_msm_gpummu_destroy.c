
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mmu {int dev; } ;
struct msm_gpummu {int pt_base; int table; } ;


 int DMA_ATTR_FORCE_CONTIGUOUS ;
 int TABLE_SIZE ;
 int dma_free_attrs (int ,int ,int ,int ,int ) ;
 int kfree (struct msm_gpummu*) ;
 struct msm_gpummu* to_msm_gpummu (struct msm_mmu*) ;

__attribute__((used)) static void msm_gpummu_destroy(struct msm_mmu *mmu)
{
 struct msm_gpummu *gpummu = to_msm_gpummu(mmu);

 dma_free_attrs(mmu->dev, TABLE_SIZE, gpummu->table, gpummu->pt_base,
  DMA_ATTR_FORCE_CONTIGUOUS);

 kfree(gpummu);
}
