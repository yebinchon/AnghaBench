
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu_domain {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 size_t SPAGE_SIZE ;
 int rk_iommu_zap_iova (struct rk_iommu_domain*,scalar_t__,size_t) ;

__attribute__((used)) static void rk_iommu_zap_iova_first_last(struct rk_iommu_domain *rk_domain,
      dma_addr_t iova, size_t size)
{
 rk_iommu_zap_iova(rk_domain, iova, SPAGE_SIZE);
 if (size > SPAGE_SIZE)
  rk_iommu_zap_iova(rk_domain, iova + size - SPAGE_SIZE,
     SPAGE_SIZE);
}
