
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_iommu_domain {int domain; int * dt; int dt_dma; int iommus; } ;
struct iommu_domain {scalar_t__ type; } ;
typedef int phys_addr_t ;


 int DMA_TO_DEVICE ;
 scalar_t__ IOMMU_DOMAIN_DMA ;
 int NUM_DT_ENTRIES ;
 int SPAGE_SIZE ;
 int WARN_ON (int) ;
 int dma_dev ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_page (unsigned long) ;
 int iommu_put_dma_cookie (int *) ;
 int list_empty (int *) ;
 int * phys_to_virt (int ) ;
 scalar_t__ rk_dte_is_pt_valid (int ) ;
 int rk_dte_pt_address (int ) ;
 struct rk_iommu_domain* to_rk_domain (struct iommu_domain*) ;

__attribute__((used)) static void rk_iommu_domain_free(struct iommu_domain *domain)
{
 struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
 int i;

 WARN_ON(!list_empty(&rk_domain->iommus));

 for (i = 0; i < NUM_DT_ENTRIES; i++) {
  u32 dte = rk_domain->dt[i];
  if (rk_dte_is_pt_valid(dte)) {
   phys_addr_t pt_phys = rk_dte_pt_address(dte);
   u32 *page_table = phys_to_virt(pt_phys);
   dma_unmap_single(dma_dev, pt_phys,
      SPAGE_SIZE, DMA_TO_DEVICE);
   free_page((unsigned long)page_table);
  }
 }

 dma_unmap_single(dma_dev, rk_domain->dt_dma,
    SPAGE_SIZE, DMA_TO_DEVICE);
 free_page((unsigned long)rk_domain->dt);

 if (domain->type == IOMMU_DOMAIN_DMA)
  iommu_put_dma_cookie(&rk_domain->domain);
}
