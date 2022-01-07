
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int CONFIG_DMA_REMAP ;
 int ENXIO ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long PAGE_ALIGN (size_t) ;
 unsigned long PAGE_SHIFT ;
 int __iommu_dma_mmap (struct page**,size_t,struct vm_area_struct*) ;
 struct page** dma_common_find_pages (void*) ;
 scalar_t__ dma_mmap_from_dev_coherent (struct device*,struct vm_area_struct*,void*,size_t,int*) ;
 int dma_pgprot (struct device*,int ,unsigned long) ;
 scalar_t__ is_vmalloc_addr (void*) ;
 unsigned long page_to_pfn (int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,unsigned long,scalar_t__,int ) ;
 int virt_to_page (void*) ;
 unsigned long vma_pages (struct vm_area_struct*) ;
 unsigned long vmalloc_to_pfn (void*) ;

__attribute__((used)) static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
  void *cpu_addr, dma_addr_t dma_addr, size_t size,
  unsigned long attrs)
{
 unsigned long nr_pages = PAGE_ALIGN(size) >> PAGE_SHIFT;
 unsigned long pfn, off = vma->vm_pgoff;
 int ret;

 vma->vm_page_prot = dma_pgprot(dev, vma->vm_page_prot, attrs);

 if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
  return ret;

 if (off >= nr_pages || vma_pages(vma) > nr_pages - off)
  return -ENXIO;

 if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
  struct page **pages = dma_common_find_pages(cpu_addr);

  if (pages)
   return __iommu_dma_mmap(pages, size, vma);
  pfn = vmalloc_to_pfn(cpu_addr);
 } else {
  pfn = page_to_pfn(virt_to_page(cpu_addr));
 }

 return remap_pfn_range(vma, vma->vm_start, pfn + off,
          vma->vm_end - vma->vm_start,
          vma->vm_page_prot);
}
