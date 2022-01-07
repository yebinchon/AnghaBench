
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_vm_pt_cursor {unsigned int pfn; TYPE_1__* entry; TYPE_1__* parent; int level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_4__ {int bo; } ;
struct TYPE_3__ {struct TYPE_3__* entries; TYPE_2__ base; } ;


 int BUG_ON (int) ;
 unsigned int amdgpu_vm_entries_mask (struct amdgpu_device*,int ) ;
 unsigned int amdgpu_vm_level_shift (struct amdgpu_device*,int ) ;

__attribute__((used)) static bool amdgpu_vm_pt_descendant(struct amdgpu_device *adev,
        struct amdgpu_vm_pt_cursor *cursor)
{
 unsigned mask, shift, idx;

 if (!cursor->entry->entries)
  return 0;

 BUG_ON(!cursor->entry->base.bo);
 mask = amdgpu_vm_entries_mask(adev, cursor->level);
 shift = amdgpu_vm_level_shift(adev, cursor->level);

 ++cursor->level;
 idx = (cursor->pfn >> shift) & mask;
 cursor->parent = cursor->entry;
 cursor->entry = &cursor->entry->entries[idx];
 return 1;
}
