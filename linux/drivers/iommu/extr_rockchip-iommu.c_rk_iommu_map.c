
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rk_iommu_domain {size_t* dt; int dt_lock; } ;
struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ IS_ERR (size_t*) ;
 int PTR_ERR (size_t*) ;
 size_t* rk_dte_get_page_table (struct rk_iommu_domain*,scalar_t__) ;
 scalar_t__ rk_dte_pt_address (size_t) ;
 int rk_iommu_map_iova (struct rk_iommu_domain*,size_t*,scalar_t__,scalar_t__,int ,size_t,int) ;
 size_t rk_iova_dte_index (scalar_t__) ;
 size_t rk_iova_pte_index (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rk_iommu_domain* to_rk_domain (struct iommu_domain*) ;

__attribute__((used)) static int rk_iommu_map(struct iommu_domain *domain, unsigned long _iova,
   phys_addr_t paddr, size_t size, int prot)
{
 struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
 unsigned long flags;
 dma_addr_t pte_dma, iova = (dma_addr_t)_iova;
 u32 *page_table, *pte_addr;
 u32 dte_index, pte_index;
 int ret;

 spin_lock_irqsave(&rk_domain->dt_lock, flags);
 page_table = rk_dte_get_page_table(rk_domain, iova);
 if (IS_ERR(page_table)) {
  spin_unlock_irqrestore(&rk_domain->dt_lock, flags);
  return PTR_ERR(page_table);
 }

 dte_index = rk_domain->dt[rk_iova_dte_index(iova)];
 pte_index = rk_iova_pte_index(iova);
 pte_addr = &page_table[pte_index];
 pte_dma = rk_dte_pt_address(dte_index) + pte_index * sizeof(u32);
 ret = rk_iommu_map_iova(rk_domain, pte_addr, pte_dma, iova,
    paddr, size, prot);

 spin_unlock_irqrestore(&rk_domain->dt_lock, flags);

 return ret;
}
