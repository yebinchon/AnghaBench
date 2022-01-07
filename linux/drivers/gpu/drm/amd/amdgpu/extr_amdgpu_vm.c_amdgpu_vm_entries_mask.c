
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {unsigned int root_level; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 unsigned int AMDGPU_VM_PTB ;
 int AMDGPU_VM_PTE_COUNT (struct amdgpu_device*) ;

__attribute__((used)) static uint32_t amdgpu_vm_entries_mask(struct amdgpu_device *adev,
           unsigned int level)
{
 if (level <= adev->vm_manager.root_level)
  return 0xffffffff;
 else if (level != AMDGPU_VM_PTB)
  return 0x1ff;
 else
  return AMDGPU_VM_PTE_COUNT(adev) - 1;
}
