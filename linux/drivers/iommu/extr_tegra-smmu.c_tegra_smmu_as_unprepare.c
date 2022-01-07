
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_smmu_as {scalar_t__ use_count; int * smmu; int pd_dma; int id; } ;
struct tegra_smmu {int dev; } ;


 int DMA_TO_DEVICE ;
 int SMMU_SIZE_PD ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int tegra_smmu_free_asid (struct tegra_smmu*,int ) ;

__attribute__((used)) static void tegra_smmu_as_unprepare(struct tegra_smmu *smmu,
        struct tegra_smmu_as *as)
{
 if (--as->use_count > 0)
  return;

 tegra_smmu_free_asid(smmu, as->id);

 dma_unmap_page(smmu->dev, as->pd_dma, SMMU_SIZE_PD, DMA_TO_DEVICE);

 as->smmu = ((void*)0);
}
