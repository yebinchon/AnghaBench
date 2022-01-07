
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_dma {int page; int daddr; } ;
struct i915_address_space {int dma; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int vm_free_page (struct i915_address_space*,int ) ;

__attribute__((used)) static void cleanup_page_dma(struct i915_address_space *vm,
        struct i915_page_dma *p)
{
 dma_unmap_page(vm->dma, p->daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
 vm_free_page(vm, p->page);
}
