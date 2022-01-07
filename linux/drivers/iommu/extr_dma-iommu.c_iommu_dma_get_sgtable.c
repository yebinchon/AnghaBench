
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int sgl; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int CONFIG_DMA_REMAP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int PAGE_ALIGN (size_t) ;
 int PAGE_SHIFT ;
 struct page** dma_common_find_pages (void*) ;
 scalar_t__ is_vmalloc_addr (void*) ;
 int sg_alloc_table (struct sg_table*,int,int ) ;
 int sg_alloc_table_from_pages (struct sg_table*,struct page**,int,int ,size_t,int ) ;
 int sg_set_page (int ,struct page*,int,int ) ;
 struct page* virt_to_page (void*) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
  void *cpu_addr, dma_addr_t dma_addr, size_t size,
  unsigned long attrs)
{
 struct page *page;
 int ret;

 if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
  struct page **pages = dma_common_find_pages(cpu_addr);

  if (pages) {
   return sg_alloc_table_from_pages(sgt, pages,
     PAGE_ALIGN(size) >> PAGE_SHIFT,
     0, size, GFP_KERNEL);
  }

  page = vmalloc_to_page(cpu_addr);
 } else {
  page = virt_to_page(cpu_addr);
 }

 ret = sg_alloc_table(sgt, 1, GFP_KERNEL);
 if (!ret)
  sg_set_page(sgt->sgl, page, PAGE_ALIGN(size), 0);
 return ret;
}
