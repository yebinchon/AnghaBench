
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_iommu_domain {int dt_lock; int * dt; } ;
struct iommu_domain {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef int dma_addr_t ;


 scalar_t__ phys_to_virt (scalar_t__) ;
 int rk_dte_is_pt_valid (int ) ;
 scalar_t__ rk_dte_pt_address (int ) ;
 size_t rk_iova_dte_index (int ) ;
 scalar_t__ rk_iova_page_offset (int ) ;
 size_t rk_iova_pte_index (int ) ;
 int rk_pte_is_page_valid (int ) ;
 scalar_t__ rk_pte_page_address (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rk_iommu_domain* to_rk_domain (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t rk_iommu_iova_to_phys(struct iommu_domain *domain,
      dma_addr_t iova)
{
 struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
 unsigned long flags;
 phys_addr_t pt_phys, phys = 0;
 u32 dte, pte;
 u32 *page_table;

 spin_lock_irqsave(&rk_domain->dt_lock, flags);

 dte = rk_domain->dt[rk_iova_dte_index(iova)];
 if (!rk_dte_is_pt_valid(dte))
  goto out;

 pt_phys = rk_dte_pt_address(dte);
 page_table = (u32 *)phys_to_virt(pt_phys);
 pte = page_table[rk_iova_pte_index(iova)];
 if (!rk_pte_is_page_valid(pte))
  goto out;

 phys = rk_pte_page_address(pte) + rk_iova_page_offset(iova);
out:
 spin_unlock_irqrestore(&rk_domain->dt_lock, flags);

 return phys;
}
