
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_smmu_as {int id; struct tegra_smmu* smmu; } ;
struct tegra_smmu {int dev; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_sync_single_range_for_device (int ,int ,unsigned long,int,int ) ;
 unsigned long offset_in_page (int *) ;
 int smmu_flush (struct tegra_smmu*) ;
 int smmu_flush_ptc (struct tegra_smmu*,int ,unsigned long) ;
 int smmu_flush_tlb_group (struct tegra_smmu*,int ,unsigned long) ;

__attribute__((used)) static void tegra_smmu_set_pte(struct tegra_smmu_as *as, unsigned long iova,
          u32 *pte, dma_addr_t pte_dma, u32 val)
{
 struct tegra_smmu *smmu = as->smmu;
 unsigned long offset = offset_in_page(pte);

 *pte = val;

 dma_sync_single_range_for_device(smmu->dev, pte_dma, offset,
      4, DMA_TO_DEVICE);
 smmu_flush_ptc(smmu, pte_dma, offset);
 smmu_flush_tlb_group(smmu, as->id, iova);
 smmu_flush(smmu);
}
