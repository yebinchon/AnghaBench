
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int PAGE_ALIGN (size_t) ;
 int PAGE_SHIFT ;
 int vm_map_pages (struct vm_area_struct*,struct page**,int) ;

__attribute__((used)) static int __iommu_dma_mmap(struct page **pages, size_t size,
  struct vm_area_struct *vma)
{
 return vm_map_pages(vma, pages, PAGE_ALIGN(size) >> PAGE_SHIFT);
}
