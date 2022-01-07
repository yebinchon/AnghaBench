
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct psb_mmu_pt {int count; } ;
struct psb_mmu_pd {int hw_context; TYPE_1__* driver; } ;
struct TYPE_2__ {int sem; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int down_read (int *) ;
 int psb_mmu_flush (TYPE_1__*) ;
 int psb_mmu_flush_ptes (struct psb_mmu_pd*,unsigned long,int,int,int) ;
 int psb_mmu_invalidate_pte (struct psb_mmu_pt*,unsigned long) ;
 struct psb_mmu_pt* psb_mmu_pt_map_lock (struct psb_mmu_pd*,unsigned long) ;
 int psb_mmu_pt_unmap_unlock (struct psb_mmu_pt*) ;
 unsigned long psb_pd_addr_end (unsigned long,unsigned long) ;
 int up_read (int *) ;

void psb_mmu_remove_pages(struct psb_mmu_pd *pd, unsigned long address,
     uint32_t num_pages, uint32_t desired_tile_stride,
     uint32_t hw_tile_stride)
{
 struct psb_mmu_pt *pt;
 uint32_t rows = 1;
 uint32_t i;
 unsigned long addr;
 unsigned long end;
 unsigned long next;
 unsigned long add;
 unsigned long row_add;
 unsigned long f_address = address;

 if (hw_tile_stride)
  rows = num_pages / desired_tile_stride;
 else
  desired_tile_stride = num_pages;

 add = desired_tile_stride << PAGE_SHIFT;
 row_add = hw_tile_stride << PAGE_SHIFT;

 down_read(&pd->driver->sem);



 for (i = 0; i < rows; ++i) {

  addr = address;
  end = addr + add;

  do {
   next = psb_pd_addr_end(addr, end);
   pt = psb_mmu_pt_map_lock(pd, addr);
   if (!pt)
    continue;
   do {
    psb_mmu_invalidate_pte(pt, addr);
    --pt->count;

   } while (addr += PAGE_SIZE, addr < next);
   psb_mmu_pt_unmap_unlock(pt);

  } while (addr = next, next != end);
  address += row_add;
 }
 if (pd->hw_context != -1)
  psb_mmu_flush_ptes(pd, f_address, num_pages,
       desired_tile_stride, hw_tile_stride);

 up_read(&pd->driver->sem);

 if (pd->hw_context != -1)
  psb_mmu_flush(pd->driver);
}
