
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int iommu_iova_to_phys (struct iommu_domain*,int ) ;
 void* phys_to_virt (int ) ;

__attribute__((used)) static void *caam_iova_to_virt(struct iommu_domain *domain,
          dma_addr_t iova_addr)
{
 phys_addr_t phys_addr;

 phys_addr = domain ? iommu_iova_to_phys(domain, iova_addr) : iova_addr;

 return phys_to_virt(phys_addr);
}
