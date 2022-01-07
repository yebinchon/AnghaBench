
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_smmu_as {struct page** pts; int pd; struct tegra_smmu* smmu; } ;
struct tegra_smmu {int dev; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int GFP_KERNEL ;
 int SMMU_MK_PDE (int ,int) ;
 int SMMU_PDE_ATTR ;
 int SMMU_PDE_NEXT ;
 int SMMU_SIZE_PT ;
 int __GFP_DMA ;
 int __GFP_ZERO ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int) ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 unsigned int iova_pd_index (int ) ;
 int * page_address (int ) ;
 int smmu_dma_addr_valid (struct tegra_smmu*,int ) ;
 int smmu_pde_to_dma (int ) ;
 int * tegra_smmu_pte_offset (struct page*,int ) ;
 int tegra_smmu_set_pde (struct tegra_smmu_as*,int ,int ) ;

__attribute__((used)) static u32 *as_get_pte(struct tegra_smmu_as *as, dma_addr_t iova,
         dma_addr_t *dmap)
{
 unsigned int pde = iova_pd_index(iova);
 struct tegra_smmu *smmu = as->smmu;

 if (!as->pts[pde]) {
  struct page *page;
  dma_addr_t dma;

  page = alloc_page(GFP_KERNEL | __GFP_DMA | __GFP_ZERO);
  if (!page)
   return ((void*)0);

  dma = dma_map_page(smmu->dev, page, 0, SMMU_SIZE_PT,
       DMA_TO_DEVICE);
  if (dma_mapping_error(smmu->dev, dma)) {
   __free_page(page);
   return ((void*)0);
  }

  if (!smmu_dma_addr_valid(smmu, dma)) {
   dma_unmap_page(smmu->dev, dma, SMMU_SIZE_PT,
           DMA_TO_DEVICE);
   __free_page(page);
   return ((void*)0);
  }

  as->pts[pde] = page;

  tegra_smmu_set_pde(as, iova, SMMU_MK_PDE(dma, SMMU_PDE_ATTR |
             SMMU_PDE_NEXT));

  *dmap = dma;
 } else {
  u32 *pd = page_address(as->pd);

  *dmap = smmu_pde_to_dma(pd[pde]);
 }

 return tegra_smmu_pte_offset(as->pts[pde], iova);
}
