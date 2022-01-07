
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_iommu_domain {int dt_lock; } ;
typedef size_t phys_addr_t ;
typedef unsigned int dma_addr_t ;


 int EADDRINUSE ;
 size_t SPAGE_SIZE ;
 int assert_spin_locked (int *) ;
 int pr_err (char*,unsigned int*,size_t*,size_t*,int) ;
 int rk_iommu_unmap_iova (struct rk_iommu_domain*,int *,unsigned int,unsigned int) ;
 int rk_iommu_zap_iova_first_last (struct rk_iommu_domain*,unsigned int,size_t) ;
 int rk_mk_pte (size_t,int) ;
 scalar_t__ rk_pte_is_page_valid (int ) ;
 size_t rk_pte_page_address (int ) ;
 int rk_table_flush (struct rk_iommu_domain*,unsigned int,unsigned int) ;

__attribute__((used)) static int rk_iommu_map_iova(struct rk_iommu_domain *rk_domain, u32 *pte_addr,
        dma_addr_t pte_dma, dma_addr_t iova,
        phys_addr_t paddr, size_t size, int prot)
{
 unsigned int pte_count;
 unsigned int pte_total = size / SPAGE_SIZE;
 phys_addr_t page_phys;

 assert_spin_locked(&rk_domain->dt_lock);

 for (pte_count = 0; pte_count < pte_total; pte_count++) {
  u32 pte = pte_addr[pte_count];

  if (rk_pte_is_page_valid(pte))
   goto unwind;

  pte_addr[pte_count] = rk_mk_pte(paddr, prot);

  paddr += SPAGE_SIZE;
 }

 rk_table_flush(rk_domain, pte_dma, pte_total);







 rk_iommu_zap_iova_first_last(rk_domain, iova, size);

 return 0;
unwind:

 rk_iommu_unmap_iova(rk_domain, pte_addr, pte_dma,
       pte_count * SPAGE_SIZE);

 iova += pte_count * SPAGE_SIZE;
 page_phys = rk_pte_page_address(pte_addr[pte_count]);
 pr_err("iova: %pad already mapped to %pa cannot remap to phys: %pa prot: %#x\n",
        &iova, &page_phys, &paddr, prot);

 return -EADDRINUSE;
}
