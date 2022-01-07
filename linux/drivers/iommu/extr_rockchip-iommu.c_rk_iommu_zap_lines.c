
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu {int num_mmu; int * bases; } ;
typedef scalar_t__ dma_addr_t ;


 int RK_MMU_ZAP_ONE_LINE ;
 scalar_t__ SPAGE_SIZE ;
 int rk_iommu_write (int ,int ,scalar_t__) ;

__attribute__((used)) static void rk_iommu_zap_lines(struct rk_iommu *iommu, dma_addr_t iova_start,
          size_t size)
{
 int i;
 dma_addr_t iova_end = iova_start + size;




 for (i = 0; i < iommu->num_mmu; i++) {
  dma_addr_t iova;

  for (iova = iova_start; iova < iova_end; iova += SPAGE_SIZE)
   rk_iommu_write(iommu->bases[i], RK_MMU_ZAP_ONE_LINE, iova);
 }
}
