
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int domain; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_sync_target { ____Placeholder_dma_sync_target } dma_sync_target ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 scalar_t__ WARN_ON (int) ;
 struct dmar_domain* find_domain (struct device*) ;
 int intel_iommu_iova_to_phys (int *,int ) ;
 scalar_t__ is_swiotlb_buffer (int ) ;
 int swiotlb_tbl_sync_single (struct device*,int ,size_t,int,int) ;

__attribute__((used)) static void
bounce_sync_single(struct device *dev, dma_addr_t addr, size_t size,
     enum dma_data_direction dir, enum dma_sync_target target)
{
 struct dmar_domain *domain;
 phys_addr_t tlb_addr;

 domain = find_domain(dev);
 if (WARN_ON(!domain))
  return;

 tlb_addr = intel_iommu_iova_to_phys(&domain->domain, addr);
 if (is_swiotlb_buffer(tlb_addr))
  swiotlb_tbl_sync_single(dev, tlb_addr, size, dir, target);
}
