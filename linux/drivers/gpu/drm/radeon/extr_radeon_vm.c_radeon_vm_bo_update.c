
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u64 ;
struct ttm_mem_reg {scalar_t__ mem_type; scalar_t__ start; } ;
struct radeon_vm {TYPE_3__* ids; int status_lock; int cleared; } ;
struct radeon_ib {unsigned int length_dw; TYPE_5__* fence; int sync; } ;
struct TYPE_9__ {scalar_t__ vram_base_offset; } ;
struct radeon_device {TYPE_2__ vm_manager; int dev; } ;
struct TYPE_11__ {int start; int last; } ;
struct radeon_bo_va {int flags; int last_pt_update; TYPE_4__ it; TYPE_7__* bo; int vm_status; struct radeon_vm* vm; } ;
struct TYPE_8__ {int ttm; } ;
struct TYPE_13__ {int flags; TYPE_1__ tbo; } ;
struct TYPE_12__ {int is_vm_update; } ;
struct TYPE_10__ {int last_id_use; } ;


 int EINVAL ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int R600_PTE_GART_MASK ;
 int R600_PTE_SYSTEM ;
 int R600_RING_TYPE_DMA_INDEX ;
 int RADEON_GEM_GTT_UC ;
 int RADEON_GEM_GTT_WC ;
 unsigned int RADEON_NUM_RINGS ;
 int RADEON_VM_PAGE_SNOOPED ;
 int RADEON_VM_PAGE_SYSTEM ;
 int RADEON_VM_PAGE_VALID ;
 int RADEON_VM_PAGE_WRITEABLE ;
 scalar_t__ TTM_PL_SYSTEM ;
 scalar_t__ TTM_PL_TT ;
 int WARN_ON (int) ;
 int dev_err (int ,char*,TYPE_7__*,struct radeon_vm*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 unsigned int min (int ,int) ;
 int radeon_asic_vm_pad_ib (struct radeon_device*,struct radeon_ib*) ;
 int radeon_fence_ref (TYPE_5__*) ;
 int radeon_fence_unref (int *) ;
 int radeon_ib_free (struct radeon_device*,struct radeon_ib*) ;
 int radeon_ib_get (struct radeon_device*,int ,struct radeon_ib*,int *,unsigned int) ;
 int radeon_ib_schedule (struct radeon_device*,struct radeon_ib*,int *,int) ;
 int radeon_sync_fence (int *,int ) ;
 scalar_t__ radeon_ttm_tt_is_readonly (int ) ;
 int radeon_vm_block_size ;
 int radeon_vm_fence_pts (struct radeon_vm*,int,int,TYPE_5__*) ;
 int radeon_vm_page_flags (int) ;
 int radeon_vm_update_ptes (struct radeon_device*,struct radeon_vm*,struct radeon_ib*,int,int,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_radeon_vm_bo_update (struct radeon_bo_va*) ;

int radeon_vm_bo_update(struct radeon_device *rdev,
   struct radeon_bo_va *bo_va,
   struct ttm_mem_reg *mem)
{
 struct radeon_vm *vm = bo_va->vm;
 struct radeon_ib ib;
 unsigned nptes, ncmds, ndw;
 uint64_t addr;
 uint32_t flags;
 int r;

 if (!bo_va->it.start) {
  dev_err(rdev->dev, "bo %p don't has a mapping in vm %p\n",
   bo_va->bo, vm);
  return -EINVAL;
 }

 spin_lock(&vm->status_lock);
 if (mem) {
  if (list_empty(&bo_va->vm_status)) {
   spin_unlock(&vm->status_lock);
   return 0;
  }
  list_del_init(&bo_va->vm_status);
 } else {
  list_del(&bo_va->vm_status);
  list_add(&bo_va->vm_status, &vm->cleared);
 }
 spin_unlock(&vm->status_lock);

 bo_va->flags &= ~RADEON_VM_PAGE_VALID;
 bo_va->flags &= ~RADEON_VM_PAGE_SYSTEM;
 bo_va->flags &= ~RADEON_VM_PAGE_SNOOPED;
 if (bo_va->bo && radeon_ttm_tt_is_readonly(bo_va->bo->tbo.ttm))
  bo_va->flags &= ~RADEON_VM_PAGE_WRITEABLE;

 if (mem) {
  addr = (u64)mem->start << PAGE_SHIFT;
  if (mem->mem_type != TTM_PL_SYSTEM) {
   bo_va->flags |= RADEON_VM_PAGE_VALID;
  }
  if (mem->mem_type == TTM_PL_TT) {
   bo_va->flags |= RADEON_VM_PAGE_SYSTEM;
   if (!(bo_va->bo->flags & (RADEON_GEM_GTT_WC | RADEON_GEM_GTT_UC)))
    bo_va->flags |= RADEON_VM_PAGE_SNOOPED;

  } else {
   addr += rdev->vm_manager.vram_base_offset;
  }
 } else {
  addr = 0;
 }

 trace_radeon_vm_bo_update(bo_va);

 nptes = bo_va->it.last - bo_va->it.start + 1;



 ncmds = (nptes >> min(radeon_vm_block_size, 11)) + 1;


 ndw = 64;

 flags = radeon_vm_page_flags(bo_va->flags);
 if ((flags & R600_PTE_GART_MASK) == R600_PTE_GART_MASK) {

  ndw += ncmds * 7;

 } else if (flags & R600_PTE_SYSTEM) {

  ndw += ncmds * 4;


  ndw += nptes * 2;

 } else {

  ndw += ncmds * 10;


  ndw += 2 * 10;
 }


 if (ndw > 0xfffff)
  return -ENOMEM;

 r = radeon_ib_get(rdev, R600_RING_TYPE_DMA_INDEX, &ib, ((void*)0), ndw * 4);
 if (r)
  return r;
 ib.length_dw = 0;

 if (!(bo_va->flags & RADEON_VM_PAGE_VALID)) {
  unsigned i;

  for (i = 0; i < RADEON_NUM_RINGS; ++i)
   radeon_sync_fence(&ib.sync, vm->ids[i].last_id_use);
 }

 r = radeon_vm_update_ptes(rdev, vm, &ib, bo_va->it.start,
      bo_va->it.last + 1, addr,
      radeon_vm_page_flags(bo_va->flags));
 if (r) {
  radeon_ib_free(rdev, &ib);
  return r;
 }

 radeon_asic_vm_pad_ib(rdev, &ib);
 WARN_ON(ib.length_dw > ndw);

 r = radeon_ib_schedule(rdev, &ib, ((void*)0), 0);
 if (r) {
  radeon_ib_free(rdev, &ib);
  return r;
 }
 ib.fence->is_vm_update = 1;
 radeon_vm_fence_pts(vm, bo_va->it.start, bo_va->it.last + 1, ib.fence);
 radeon_fence_unref(&bo_va->last_pt_update);
 bo_va->last_pt_update = radeon_fence_ref(ib.fence);
 radeon_ib_free(rdev, &ib);

 return 0;
}
