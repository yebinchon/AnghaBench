
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_iommu_domain {int dt_lock; } ;
typedef int dma_addr_t ;


 size_t SPAGE_SIZE ;
 int assert_spin_locked (int *) ;
 int rk_mk_pte_invalid (int ) ;
 int rk_pte_is_page_valid (int ) ;
 int rk_table_flush (struct rk_iommu_domain*,int ,unsigned int) ;

__attribute__((used)) static size_t rk_iommu_unmap_iova(struct rk_iommu_domain *rk_domain,
      u32 *pte_addr, dma_addr_t pte_dma,
      size_t size)
{
 unsigned int pte_count;
 unsigned int pte_total = size / SPAGE_SIZE;

 assert_spin_locked(&rk_domain->dt_lock);

 for (pte_count = 0; pte_count < pte_total; pte_count++) {
  u32 pte = pte_addr[pte_count];
  if (!rk_pte_is_page_valid(pte))
   break;

  pte_addr[pte_count] = rk_mk_pte_invalid(pte);
 }

 rk_table_flush(rk_domain, pte_dma, pte_count);

 return pte_count * SPAGE_SIZE;
}
