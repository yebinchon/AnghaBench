
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int iovad; } ;


 int DMA_PTE_READ ;
 int DMA_PTE_WRITE ;
 int ENOMEM ;
 unsigned long long VTD_PAGE_SHIFT ;
 int __domain_mapping (struct dmar_domain*,unsigned long,int *,unsigned long,unsigned long,int) ;
 int dma_pte_clear_range (struct dmar_domain*,unsigned long,unsigned long) ;
 int dma_to_mm_pfn (unsigned long) ;
 int pr_debug (char*,unsigned long long,unsigned long long) ;
 int pr_err (char*) ;
 int reserve_iova (int *,int ,int ) ;

__attribute__((used)) static int iommu_domain_identity_map(struct dmar_domain *domain,
         unsigned long long start,
         unsigned long long end)
{
 unsigned long first_vpfn = start >> VTD_PAGE_SHIFT;
 unsigned long last_vpfn = end >> VTD_PAGE_SHIFT;

 if (!reserve_iova(&domain->iovad, dma_to_mm_pfn(first_vpfn),
     dma_to_mm_pfn(last_vpfn))) {
  pr_err("Reserving iova failed\n");
  return -ENOMEM;
 }

 pr_debug("Mapping reserved region %llx-%llx\n", start, end);




 dma_pte_clear_range(domain, first_vpfn, last_vpfn);

 return __domain_mapping(domain, first_vpfn, ((void*)0),
    first_vpfn, last_vpfn - first_vpfn + 1,
    DMA_PTE_READ|DMA_PTE_WRITE);
}
