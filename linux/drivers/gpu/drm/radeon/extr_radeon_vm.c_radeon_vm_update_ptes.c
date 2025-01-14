
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int uint32_t ;
struct radeon_vm {TYPE_1__* page_tables; } ;
struct radeon_ib {int sync; } ;
struct radeon_device {int dummy; } ;
struct TYPE_5__ {int resv; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct radeon_bo {TYPE_3__ tbo; } ;
struct TYPE_4__ {struct radeon_bo* bo; } ;


 unsigned int RADEON_GPU_PAGE_SIZE ;
 int RADEON_VM_PTE_COUNT ;
 int dma_resv_reserve_shared (int ,int) ;
 size_t radeon_bo_gpu_offset (struct radeon_bo*) ;
 int radeon_sync_resv (struct radeon_device*,int *,int ,int) ;
 size_t radeon_vm_block_size ;
 int radeon_vm_frag_ptes (struct radeon_device*,struct radeon_ib*,size_t,size_t,size_t,int ) ;

__attribute__((used)) static int radeon_vm_update_ptes(struct radeon_device *rdev,
     struct radeon_vm *vm,
     struct radeon_ib *ib,
     uint64_t start, uint64_t end,
     uint64_t dst, uint32_t flags)
{
 uint64_t mask = RADEON_VM_PTE_COUNT - 1;
 uint64_t last_pte = ~0, last_dst = ~0;
 unsigned count = 0;
 uint64_t addr;


 for (addr = start; addr < end; ) {
  uint64_t pt_idx = addr >> radeon_vm_block_size;
  struct radeon_bo *pt = vm->page_tables[pt_idx].bo;
  unsigned nptes;
  uint64_t pte;
  int r;

  radeon_sync_resv(rdev, &ib->sync, pt->tbo.base.resv, 1);
  r = dma_resv_reserve_shared(pt->tbo.base.resv, 1);
  if (r)
   return r;

  if ((addr & ~mask) == (end & ~mask))
   nptes = end - addr;
  else
   nptes = RADEON_VM_PTE_COUNT - (addr & mask);

  pte = radeon_bo_gpu_offset(pt);
  pte += (addr & mask) * 8;

  if ((last_pte + 8 * count) != pte) {

   if (count) {
    radeon_vm_frag_ptes(rdev, ib, last_pte,
          last_pte + 8 * count,
          last_dst, flags);
   }

   count = nptes;
   last_pte = pte;
   last_dst = dst;
  } else {
   count += nptes;
  }

  addr += nptes;
  dst += nptes * RADEON_GPU_PAGE_SIZE;
 }

 if (count) {
  radeon_vm_frag_ptes(rdev, ib, last_pte,
        last_pte + 8 * count,
        last_dst, flags);
 }

 return 0;
}
