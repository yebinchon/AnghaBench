
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmu_tlb_sync_context (void*) ;

__attribute__((used)) static void mmu_tlb_flush_leaf(unsigned long iova, size_t size, size_t granule,
          void *cookie)
{
 mmu_tlb_sync_context(cookie);
}
