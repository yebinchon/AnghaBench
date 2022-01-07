
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_smmu_as {int pd; struct page** pts; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;


 unsigned int iova_pd_index (unsigned long) ;
 int * page_address (int ) ;
 int smmu_pde_to_dma (int ) ;
 int * tegra_smmu_pte_offset (struct page*,unsigned long) ;

__attribute__((used)) static u32 *tegra_smmu_pte_lookup(struct tegra_smmu_as *as, unsigned long iova,
      dma_addr_t *dmap)
{
 unsigned int pd_index = iova_pd_index(iova);
 struct page *pt_page;
 u32 *pd;

 pt_page = as->pts[pd_index];
 if (!pt_page)
  return ((void*)0);

 pd = page_address(as->pd);
 *dmap = smmu_pde_to_dma(pd[pd_index]);

 return tegra_smmu_pte_offset(pt_page, iova);
}
