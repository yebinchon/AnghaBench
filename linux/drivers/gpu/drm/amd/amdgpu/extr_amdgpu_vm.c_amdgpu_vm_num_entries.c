
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int root_level; int max_pfn; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 unsigned int AMDGPU_VM_PTB ;
 int AMDGPU_VM_PTE_COUNT (struct amdgpu_device*) ;
 unsigned int amdgpu_vm_level_shift (struct amdgpu_device*,unsigned int) ;
 unsigned int round_up (int ,unsigned long long) ;

__attribute__((used)) static unsigned amdgpu_vm_num_entries(struct amdgpu_device *adev,
          unsigned level)
{
 unsigned shift = amdgpu_vm_level_shift(adev,
            adev->vm_manager.root_level);

 if (level == adev->vm_manager.root_level)

  return round_up(adev->vm_manager.max_pfn, 1ULL << shift) >> shift;
 else if (level != AMDGPU_VM_PTB)

  return 512;
 else

  return AMDGPU_VM_PTE_COUNT(adev);
}
