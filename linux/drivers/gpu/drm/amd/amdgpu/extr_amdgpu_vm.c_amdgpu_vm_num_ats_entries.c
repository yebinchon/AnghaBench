
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root_level; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 unsigned int AMDGPU_GMC_HOLE_START ;
 unsigned int AMDGPU_GPU_PAGE_SHIFT ;
 unsigned int amdgpu_vm_level_shift (struct amdgpu_device*,int ) ;

__attribute__((used)) static unsigned amdgpu_vm_num_ats_entries(struct amdgpu_device *adev)
{
 unsigned shift;

 shift = amdgpu_vm_level_shift(adev, adev->vm_manager.root_level);
 return AMDGPU_GMC_HOLE_START >> (shift + AMDGPU_GPU_PAGE_SHIFT);
}
