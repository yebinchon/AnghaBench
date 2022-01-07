
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_vm_pt_cursor {unsigned long long pfn; int * entry; TYPE_1__* parent; scalar_t__ level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int * entries; } ;


 unsigned int amdgpu_vm_level_shift (struct amdgpu_device*,scalar_t__) ;
 unsigned int amdgpu_vm_num_entries (struct amdgpu_device*,scalar_t__) ;

__attribute__((used)) static bool amdgpu_vm_pt_sibling(struct amdgpu_device *adev,
     struct amdgpu_vm_pt_cursor *cursor)
{
 unsigned shift, num_entries;


 if (!cursor->parent)
  return 0;


 shift = amdgpu_vm_level_shift(adev, cursor->level - 1);
 num_entries = amdgpu_vm_num_entries(adev, cursor->level - 1);

 if (cursor->entry == &cursor->parent->entries[num_entries - 1])
  return 0;

 cursor->pfn += 1ULL << shift;
 cursor->pfn &= ~((1ULL << shift) - 1);
 ++cursor->entry;
 return 1;
}
