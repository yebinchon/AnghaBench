
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_smmu_as {scalar_t__* count; struct page** pts; int pd; struct tegra_smmu* smmu; } ;
struct tegra_smmu {int dev; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int SMMU_SIZE_PT ;
 int __free_page (struct page*) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 unsigned int iova_pd_index (unsigned long) ;
 int * page_address (int ) ;
 int smmu_pde_to_dma (int ) ;
 int tegra_smmu_set_pde (struct tegra_smmu_as*,unsigned long,int ) ;

__attribute__((used)) static void tegra_smmu_pte_put_use(struct tegra_smmu_as *as, unsigned long iova)
{
 unsigned int pde = iova_pd_index(iova);
 struct page *page = as->pts[pde];





 if (--as->count[pde] == 0) {
  struct tegra_smmu *smmu = as->smmu;
  u32 *pd = page_address(as->pd);
  dma_addr_t pte_dma = smmu_pde_to_dma(pd[pde]);

  tegra_smmu_set_pde(as, iova, 0);

  dma_unmap_page(smmu->dev, pte_dma, SMMU_SIZE_PT, DMA_TO_DEVICE);
  __free_page(page);
  as->pts[pde] = ((void*)0);
 }
}
