
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct tegra_smmu_as {TYPE_1__* smmu; } ;
struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {unsigned long pfn_mask; } ;


 int PFN_PHYS (unsigned long) ;
 unsigned long* tegra_smmu_pte_lookup (struct tegra_smmu_as*,int ,int *) ;
 struct tegra_smmu_as* to_smmu_as (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t tegra_smmu_iova_to_phys(struct iommu_domain *domain,
        dma_addr_t iova)
{
 struct tegra_smmu_as *as = to_smmu_as(domain);
 unsigned long pfn;
 dma_addr_t pte_dma;
 u32 *pte;

 pte = tegra_smmu_pte_lookup(as, iova, &pte_dma);
 if (!pte || !*pte)
  return 0;

 pfn = *pte & as->smmu->pfn_mask;

 return PFN_PHYS(pfn);
}
