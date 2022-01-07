
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_smmu_as {scalar_t__ use_count; int id; int pd_dma; struct tegra_smmu* smmu; int attr; int pd; } ;
struct tegra_smmu {int dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int SMMU_PTB_ASID ;
 int SMMU_PTB_DATA ;
 int SMMU_PTB_DATA_VALUE (int ,int ) ;
 int SMMU_SIZE_PD ;
 int dma_map_page (int ,int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int smmu_dma_addr_valid (struct tegra_smmu*,int ) ;
 int smmu_flush (struct tegra_smmu*) ;
 int smmu_flush_ptc (struct tegra_smmu*,int ,int ) ;
 int smmu_flush_tlb_asid (struct tegra_smmu*,int) ;
 int smmu_writel (struct tegra_smmu*,int,int ) ;
 int tegra_smmu_alloc_asid (struct tegra_smmu*,int*) ;

__attribute__((used)) static int tegra_smmu_as_prepare(struct tegra_smmu *smmu,
     struct tegra_smmu_as *as)
{
 u32 value;
 int err;

 if (as->use_count > 0) {
  as->use_count++;
  return 0;
 }

 as->pd_dma = dma_map_page(smmu->dev, as->pd, 0, SMMU_SIZE_PD,
      DMA_TO_DEVICE);
 if (dma_mapping_error(smmu->dev, as->pd_dma))
  return -ENOMEM;


 if (!smmu_dma_addr_valid(smmu, as->pd_dma)) {
  err = -ENOMEM;
  goto err_unmap;
 }

 err = tegra_smmu_alloc_asid(smmu, &as->id);
 if (err < 0)
  goto err_unmap;

 smmu_flush_ptc(smmu, as->pd_dma, 0);
 smmu_flush_tlb_asid(smmu, as->id);

 smmu_writel(smmu, as->id & 0x7f, SMMU_PTB_ASID);
 value = SMMU_PTB_DATA_VALUE(as->pd_dma, as->attr);
 smmu_writel(smmu, value, SMMU_PTB_DATA);
 smmu_flush(smmu);

 as->smmu = smmu;
 as->use_count++;

 return 0;

err_unmap:
 dma_unmap_page(smmu->dev, as->pd_dma, SMMU_SIZE_PD, DMA_TO_DEVICE);
 return err;
}
