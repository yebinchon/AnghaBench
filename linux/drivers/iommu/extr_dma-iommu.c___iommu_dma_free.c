
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;


 int CONFIG_DMA_DIRECT_REMAP ;
 int CONFIG_DMA_REMAP ;
 scalar_t__ IS_ENABLED (int ) ;
 size_t PAGE_ALIGN (size_t) ;
 size_t PAGE_SHIFT ;
 int __iommu_dma_free_pages (struct page**,int) ;
 struct page** dma_common_find_pages (void*) ;
 int dma_common_free_remap (void*,size_t) ;
 int dma_free_contiguous (struct device*,struct page*,size_t) ;
 scalar_t__ dma_free_from_pool (void*,size_t) ;
 scalar_t__ is_vmalloc_addr (void*) ;
 struct page* virt_to_page (void*) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static void __iommu_dma_free(struct device *dev, size_t size, void *cpu_addr)
{
 size_t alloc_size = PAGE_ALIGN(size);
 int count = alloc_size >> PAGE_SHIFT;
 struct page *page = ((void*)0), **pages = ((void*)0);


 if (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
     dma_free_from_pool(cpu_addr, alloc_size))
  return;

 if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {




  pages = dma_common_find_pages(cpu_addr);
  if (!pages)
   page = vmalloc_to_page(cpu_addr);
  dma_common_free_remap(cpu_addr, alloc_size);
 } else {

  page = virt_to_page(cpu_addr);
 }

 if (pages)
  __iommu_dma_free_pages(pages, count);
 if (page)
  dma_free_contiguous(dev, page, alloc_size);
}
