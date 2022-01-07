
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {int dummy; } ;


 scalar_t__ PageHighMem (struct page*) ;
 int edac_atomic_scrub (void*,int ) ;
 int edac_dbg (int,char*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;

__attribute__((used)) static void edac_mc_scrub_block(unsigned long page, unsigned long offset,
    u32 size)
{
 struct page *pg;
 void *virt_addr;
 unsigned long flags = 0;

 edac_dbg(3, "\n");


 if (!pfn_valid(page))
  return;


 pg = pfn_to_page(page);

 if (PageHighMem(pg))
  local_irq_save(flags);

 virt_addr = kmap_atomic(pg);


 edac_atomic_scrub(virt_addr + offset, size);


 kunmap_atomic(virt_addr);

 if (PageHighMem(pg))
  local_irq_restore(flags);
}
