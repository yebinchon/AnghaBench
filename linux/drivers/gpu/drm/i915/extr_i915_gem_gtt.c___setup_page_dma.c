
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_dma {int page; int daddr; } ;
struct i915_address_space {int dma; } ;
typedef int gfp_t ;


 int DMA_ATTR_NO_WARN ;
 int DMA_ATTR_SKIP_CPU_SYNC ;
 int ENOMEM ;
 int I915_GFP_ALLOW_FAIL ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int dma_map_page_attrs (int ,int ,int ,int ,int ,int) ;
 int dma_mapping_error (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int vm_alloc_page (struct i915_address_space*,int) ;
 int vm_free_page (struct i915_address_space*,int ) ;

__attribute__((used)) static int __setup_page_dma(struct i915_address_space *vm,
       struct i915_page_dma *p,
       gfp_t gfp)
{
 p->page = vm_alloc_page(vm, gfp | I915_GFP_ALLOW_FAIL);
 if (unlikely(!p->page))
  return -ENOMEM;

 p->daddr = dma_map_page_attrs(vm->dma,
          p->page, 0, PAGE_SIZE,
          PCI_DMA_BIDIRECTIONAL,
          DMA_ATTR_SKIP_CPU_SYNC |
          DMA_ATTR_NO_WARN);
 if (unlikely(dma_mapping_error(vm->dma, p->daddr))) {
  vm_free_page(vm, p->page);
  return -ENOMEM;
 }

 return 0;
}
