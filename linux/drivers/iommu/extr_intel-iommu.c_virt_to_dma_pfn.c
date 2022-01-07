
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long page_to_dma_pfn (int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static inline unsigned long virt_to_dma_pfn(void *p)
{
 return page_to_dma_pfn(virt_to_page(p));
}
