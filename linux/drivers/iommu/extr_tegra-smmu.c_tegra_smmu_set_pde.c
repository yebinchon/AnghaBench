
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_smmu_as {int id; int pd_dma; int pd; struct tegra_smmu* smmu; } ;
struct tegra_smmu {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_sync_single_range_for_device (int ,int ,unsigned long,int,int ) ;
 unsigned int iova_pd_index (unsigned long) ;
 int * page_address (int ) ;
 int smmu_flush (struct tegra_smmu*) ;
 int smmu_flush_ptc (struct tegra_smmu*,int ,unsigned long) ;
 int smmu_flush_tlb_section (struct tegra_smmu*,int ,unsigned long) ;

__attribute__((used)) static void tegra_smmu_set_pde(struct tegra_smmu_as *as, unsigned long iova,
          u32 value)
{
 unsigned int pd_index = iova_pd_index(iova);
 struct tegra_smmu *smmu = as->smmu;
 u32 *pd = page_address(as->pd);
 unsigned long offset = pd_index * sizeof(*pd);


 pd[pd_index] = value;


 dma_sync_single_range_for_device(smmu->dev, as->pd_dma, offset,
      sizeof(*pd), DMA_TO_DEVICE);


 smmu_flush_ptc(smmu, as->pd_dma, offset);
 smmu_flush_tlb_section(smmu, as->id, iova);
 smmu_flush(smmu);
}
