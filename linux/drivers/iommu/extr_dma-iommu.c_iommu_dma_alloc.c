
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int CONFIG_DMA_DIRECT_REMAP ;
 int CONFIG_DMA_REMAP ;
 unsigned long DMA_ATTR_FORCE_CONTIGUOUS ;
 int DMA_BIDIRECTIONAL ;
 int DMA_MAPPING_ERROR ;
 scalar_t__ IS_ENABLED (int ) ;
 int PAGE_ALIGN (size_t) ;
 int __GFP_ZERO ;
 int __iommu_dma_free (struct device*,size_t,void*) ;
 int __iommu_dma_map (struct device*,int ,size_t,int) ;
 int dev_is_dma_coherent (struct device*) ;
 void* dma_alloc_from_pool (int ,struct page**,int ) ;
 int dma_info_to_prot (int ,int,unsigned long) ;
 scalar_t__ gfpflags_allow_blocking (int ) ;
 void* iommu_dma_alloc_pages (struct device*,size_t,struct page**,int ,unsigned long) ;
 void* iommu_dma_alloc_remap (struct device*,size_t,int *,int ,unsigned long) ;
 int page_to_phys (struct page*) ;

__attribute__((used)) static void *iommu_dma_alloc(struct device *dev, size_t size,
  dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
{
 bool coherent = dev_is_dma_coherent(dev);
 int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
 struct page *page = ((void*)0);
 void *cpu_addr;

 gfp |= __GFP_ZERO;

 if (IS_ENABLED(CONFIG_DMA_REMAP) && gfpflags_allow_blocking(gfp) &&
     !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
  return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);

 if (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
     !gfpflags_allow_blocking(gfp) && !coherent)
  cpu_addr = dma_alloc_from_pool(PAGE_ALIGN(size), &page, gfp);
 else
  cpu_addr = iommu_dma_alloc_pages(dev, size, &page, gfp, attrs);
 if (!cpu_addr)
  return ((void*)0);

 *handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
 if (*handle == DMA_MAPPING_ERROR) {
  __iommu_dma_free(dev, size, cpu_addr);
  return ((void*)0);
 }

 return cpu_addr;
}
