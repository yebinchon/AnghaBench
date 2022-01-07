
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int domain; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 size_t ALIGN (size_t,int ) ;
 int VTD_PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 struct dmar_domain* find_domain (struct device*) ;
 int intel_iommu_iova_to_phys (int *,int ) ;
 int intel_unmap (struct device*,int ,size_t) ;
 scalar_t__ is_swiotlb_buffer (int ) ;
 int swiotlb_tbl_unmap_single (struct device*,int ,size_t,size_t,int,unsigned long) ;
 int trace_bounce_unmap_single (struct device*,int ,size_t) ;

__attribute__((used)) static void
bounce_unmap_single(struct device *dev, dma_addr_t dev_addr, size_t size,
      enum dma_data_direction dir, unsigned long attrs)
{
 size_t aligned_size = ALIGN(size, VTD_PAGE_SIZE);
 struct dmar_domain *domain;
 phys_addr_t tlb_addr;

 domain = find_domain(dev);
 if (WARN_ON(!domain))
  return;

 tlb_addr = intel_iommu_iova_to_phys(&domain->domain, dev_addr);
 if (WARN_ON(!tlb_addr))
  return;

 intel_unmap(dev, dev_addr, size);
 if (is_swiotlb_buffer(tlb_addr))
  swiotlb_tbl_unmap_single(dev, tlb_addr, size,
      aligned_size, dir, attrs);

 trace_bounce_unmap_single(dev, dev_addr, size);
}
