
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_page_dma {int page; } ;


 int * kmap_atomic (int ) ;
 int kunmap_atomic (int * const) ;

__attribute__((used)) static inline void
write_dma_entry(struct i915_page_dma * const pdma,
  const unsigned short idx,
  const u64 encoded_entry)
{
 u64 * const vaddr = kmap_atomic(pdma->page);

 vaddr[idx] = encoded_entry;
 kunmap_atomic(vaddr);
}
