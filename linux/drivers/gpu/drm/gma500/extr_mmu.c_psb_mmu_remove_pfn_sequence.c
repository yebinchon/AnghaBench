
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long uint32_t ;
struct psb_mmu_pt {int count; } ;
struct psb_mmu_pd {int hw_context; TYPE_1__* driver; } ;
struct TYPE_2__ {int sem; } ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int down_read (int *) ;
 int psb_mmu_flush (TYPE_1__*) ;
 int psb_mmu_flush_ptes (struct psb_mmu_pd*,unsigned long,unsigned long,int,int) ;
 int psb_mmu_invalidate_pte (struct psb_mmu_pt*,unsigned long) ;
 struct psb_mmu_pt* psb_mmu_pt_alloc_map_lock (struct psb_mmu_pd*,unsigned long) ;
 int psb_mmu_pt_unmap_unlock (struct psb_mmu_pt*) ;
 unsigned long psb_pd_addr_end (unsigned long,unsigned long) ;
 int up_read (int *) ;

void psb_mmu_remove_pfn_sequence(struct psb_mmu_pd *pd,
     unsigned long address, uint32_t num_pages)
{
 struct psb_mmu_pt *pt;
 unsigned long addr;
 unsigned long end;
 unsigned long next;
 unsigned long f_address = address;

 down_read(&pd->driver->sem);

 addr = address;
 end = addr + (num_pages << PAGE_SHIFT);

 do {
  next = psb_pd_addr_end(addr, end);
  pt = psb_mmu_pt_alloc_map_lock(pd, addr);
  if (!pt)
   goto out;
  do {
   psb_mmu_invalidate_pte(pt, addr);
   --pt->count;
  } while (addr += PAGE_SIZE, addr < next);
  psb_mmu_pt_unmap_unlock(pt);

 } while (addr = next, next != end);

out:
 if (pd->hw_context != -1)
  psb_mmu_flush_ptes(pd, f_address, num_pages, 1, 1);

 up_read(&pd->driver->sem);

 if (pd->hw_context != -1)
  psb_mmu_flush(pd->driver);

 return;
}
