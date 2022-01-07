
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_dma {int page; int daddr; } ;
struct i915_address_space {unsigned int scratch_order; int dma; int * scratch; } ;


 int BIT (unsigned int) ;
 int PAGE_SHIFT ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __free_pages (int ,unsigned int) ;
 int dma_unmap_page (int ,int ,int,int ) ;
 struct i915_page_dma* px_base (int *) ;

__attribute__((used)) static void cleanup_scratch_page(struct i915_address_space *vm)
{
 struct i915_page_dma *p = px_base(&vm->scratch[0]);
 unsigned int order = vm->scratch_order;

 dma_unmap_page(vm->dma, p->daddr, BIT(order) << PAGE_SHIFT,
         PCI_DMA_BIDIRECTIONAL);
 __free_pages(p->page, order);
}
