
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_page_dma {int page; } ;


 int kmap_atomic (int ) ;
 int kunmap_atomic (int ) ;
 int memset64 (int ,int const,unsigned int) ;

__attribute__((used)) static void
fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count)
{
 kunmap_atomic(memset64(kmap_atomic(p->page), val, count));
}
