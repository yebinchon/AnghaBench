
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_ops_domain {int iovad; } ;


 unsigned long PAGE_SHIFT ;
 unsigned int __roundup_pow_of_two (unsigned int) ;
 int free_iova_fast (int *,unsigned long,unsigned int) ;

__attribute__((used)) static void dma_ops_free_iova(struct dma_ops_domain *dma_dom,
         unsigned long address,
         unsigned int pages)
{
 pages = __roundup_pow_of_two(pages);
 address >>= PAGE_SHIFT;

 free_iova_fast(&dma_dom->iovad, address, pages);
}
