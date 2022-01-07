
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_smmu_as {int dummy; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
typedef int dma_addr_t ;


 int * tegra_smmu_pte_lookup (struct tegra_smmu_as*,unsigned long,int *) ;
 int tegra_smmu_pte_put_use (struct tegra_smmu_as*,unsigned long) ;
 int tegra_smmu_set_pte (struct tegra_smmu_as*,unsigned long,int *,int ,int ) ;
 struct tegra_smmu_as* to_smmu_as (struct iommu_domain*) ;

__attribute__((used)) static size_t tegra_smmu_unmap(struct iommu_domain *domain, unsigned long iova,
          size_t size, struct iommu_iotlb_gather *gather)
{
 struct tegra_smmu_as *as = to_smmu_as(domain);
 dma_addr_t pte_dma;
 u32 *pte;

 pte = tegra_smmu_pte_lookup(as, iova, &pte_dma);
 if (!pte || !*pte)
  return 0;

 tegra_smmu_set_pte(as, iova, pte, pte_dma, 0);
 tegra_smmu_pte_put_use(as, iova);

 return size;
}
