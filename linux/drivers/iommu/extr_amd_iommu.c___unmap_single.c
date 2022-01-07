
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct dma_ops_domain {int iovad; TYPE_1__ domain; } ;
typedef unsigned int dma_addr_t ;


 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 unsigned int __roundup_pow_of_two (unsigned int) ;
 scalar_t__ amd_iommu_unmap_flush ;
 int dma_ops_free_iova (struct dma_ops_domain*,unsigned int,unsigned int) ;
 int domain_flush_complete (TYPE_1__*) ;
 int domain_flush_tlb (TYPE_1__*) ;
 unsigned int iommu_num_pages (unsigned int,size_t,scalar_t__) ;
 int iommu_unmap_page (TYPE_1__*,unsigned int,scalar_t__) ;
 int queue_iova (int *,unsigned int,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __unmap_single(struct dma_ops_domain *dma_dom,
      dma_addr_t dma_addr,
      size_t size,
      int dir)
{
 dma_addr_t i, start;
 unsigned int pages;

 pages = iommu_num_pages(dma_addr, size, PAGE_SIZE);
 dma_addr &= PAGE_MASK;
 start = dma_addr;

 for (i = 0; i < pages; ++i) {
  iommu_unmap_page(&dma_dom->domain, start, PAGE_SIZE);
  start += PAGE_SIZE;
 }

 if (amd_iommu_unmap_flush) {
  unsigned long flags;

  spin_lock_irqsave(&dma_dom->domain.lock, flags);
  domain_flush_tlb(&dma_dom->domain);
  domain_flush_complete(&dma_dom->domain);
  spin_unlock_irqrestore(&dma_dom->domain.lock, flags);
  dma_ops_free_iova(dma_dom, dma_addr, pages);
 } else {
  pages = __roundup_pow_of_two(pages);
  queue_iova(&dma_dom->iovad, dma_addr >> PAGE_SHIFT, pages, 0);
 }
}
