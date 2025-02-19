
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct amdgpu_vm_update_params {int vm; struct amdgpu_device* adev; } ;
struct amdgpu_vm_pt_cursor {unsigned int pfn; int level; TYPE_2__* entry; } ;
struct TYPE_6__ {int root_level; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ vm_manager; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_4__ {struct amdgpu_bo* bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 unsigned int AMDGPU_GPU_PAGE_SIZE ;
 unsigned int AMDGPU_PTE_FRAG (unsigned int) ;
 unsigned int AMDGPU_PTE_VALID ;
 int AMDGPU_VM_PTB ;
 scalar_t__ CHIP_VEGA10 ;
 int ENOENT ;
 int amdgpu_vm_alloc_pts (struct amdgpu_device*,int ,struct amdgpu_vm_pt_cursor*) ;
 unsigned int amdgpu_vm_entries_mask (struct amdgpu_device*,int) ;
 int amdgpu_vm_fragment (struct amdgpu_vm_update_params*,unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*) ;
 int amdgpu_vm_free_pts (struct amdgpu_device*,int ,struct amdgpu_vm_pt_cursor*) ;
 unsigned int amdgpu_vm_level_shift (struct amdgpu_device*,int) ;
 int amdgpu_vm_pt_ancestor (struct amdgpu_vm_pt_cursor*) ;
 scalar_t__ amdgpu_vm_pt_descendant (struct amdgpu_device*,struct amdgpu_vm_pt_cursor*) ;
 int amdgpu_vm_pt_next (struct amdgpu_device*,struct amdgpu_vm_pt_cursor*) ;
 int amdgpu_vm_pt_start (struct amdgpu_device*,int ,unsigned int,struct amdgpu_vm_pt_cursor*) ;
 int amdgpu_vm_update_flags (struct amdgpu_vm_update_params*,struct amdgpu_bo*,int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int amdgpu_vm_update_ptes(struct amdgpu_vm_update_params *params,
     uint64_t start, uint64_t end,
     uint64_t dst, uint64_t flags)
{
 struct amdgpu_device *adev = params->adev;
 struct amdgpu_vm_pt_cursor cursor;
 uint64_t frag_start = start, frag_end;
 unsigned int frag;
 int r;


 amdgpu_vm_fragment(params, frag_start, end, flags, &frag, &frag_end);


 amdgpu_vm_pt_start(adev, params->vm, start, &cursor);
 while (cursor.pfn < end) {
  unsigned shift, parent_shift, mask;
  uint64_t incr, entry_end, pe_start;
  struct amdgpu_bo *pt;

  r = amdgpu_vm_alloc_pts(params->adev, params->vm, &cursor);
  if (r)
   return r;

  pt = cursor.entry->base.bo;


  if (cursor.level == adev->vm_manager.root_level) {
   if (!amdgpu_vm_pt_descendant(adev, &cursor))
    return -ENOENT;
   continue;
  }

  shift = amdgpu_vm_level_shift(adev, cursor.level);
  parent_shift = amdgpu_vm_level_shift(adev, cursor.level - 1);
  if (adev->asic_type < CHIP_VEGA10 &&
      (flags & AMDGPU_PTE_VALID)) {

   if (cursor.level != AMDGPU_VM_PTB) {
    if (!amdgpu_vm_pt_descendant(adev, &cursor))
     return -ENOENT;
    continue;
   }
  } else if (frag < shift) {




   if (!amdgpu_vm_pt_descendant(adev, &cursor))
    return -ENOENT;
   continue;
  } else if (frag >= parent_shift &&
      cursor.level - 1 != adev->vm_manager.root_level) {




   if (!amdgpu_vm_pt_ancestor(&cursor))
    return -ENOENT;
   continue;
  }


  incr = (uint64_t)AMDGPU_GPU_PAGE_SIZE << shift;
  mask = amdgpu_vm_entries_mask(adev, cursor.level);
  pe_start = ((cursor.pfn >> shift) & mask) * 8;
  entry_end = (uint64_t)(mask + 1) << shift;
  entry_end += cursor.pfn & ~(entry_end - 1);
  entry_end = min(entry_end, end);

  do {
   uint64_t upd_end = min(entry_end, frag_end);
   unsigned nptes = (upd_end - frag_start) >> shift;

   amdgpu_vm_update_flags(params, pt, cursor.level,
            pe_start, dst, nptes, incr,
            flags | AMDGPU_PTE_FRAG(frag));

   pe_start += nptes * 8;
   dst += (uint64_t)nptes * AMDGPU_GPU_PAGE_SIZE << shift;

   frag_start = upd_end;
   if (frag_start >= frag_end) {

    amdgpu_vm_fragment(params, frag_start, end,
         flags, &frag, &frag_end);
    if (frag < shift)
     break;
   }
  } while (frag_start < entry_end);

  if (amdgpu_vm_pt_descendant(adev, &cursor)) {

   while (cursor.pfn < frag_start) {
    amdgpu_vm_free_pts(adev, params->vm, &cursor);
    amdgpu_vm_pt_next(adev, &cursor);
   }

  } else if (frag >= shift) {

   amdgpu_vm_pt_next(adev, &cursor);
  }
 }

 return 0;
}
