
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct dma_ops_domain {int iovad; } ;
struct device {int dummy; } ;


 scalar_t__ DMA_BIT_MASK (int) ;
 int IOVA_PFN (scalar_t__) ;
 unsigned long PAGE_SHIFT ;
 unsigned int __roundup_pow_of_two (unsigned int) ;
 unsigned long alloc_iova_fast (int *,unsigned int,int ,int) ;

__attribute__((used)) static unsigned long dma_ops_alloc_iova(struct device *dev,
     struct dma_ops_domain *dma_dom,
     unsigned int pages, u64 dma_mask)
{
 unsigned long pfn = 0;

 pages = __roundup_pow_of_two(pages);

 if (dma_mask > DMA_BIT_MASK(32))
  pfn = alloc_iova_fast(&dma_dom->iovad, pages,
          IOVA_PFN(DMA_BIT_MASK(32)), 0);

 if (!pfn)
  pfn = alloc_iova_fast(&dma_dom->iovad, pages,
          IOVA_PFN(dma_mask), 1);

 return (pfn << PAGE_SHIFT);
}
