
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int AMDGPU_GPU_PAGE_ALIGN (int) ;
 int amdgpu_vm_num_entries (struct amdgpu_device*,unsigned int) ;

__attribute__((used)) static unsigned amdgpu_vm_bo_size(struct amdgpu_device *adev, unsigned level)
{
 return AMDGPU_GPU_PAGE_ALIGN(amdgpu_vm_num_entries(adev, level) * 8);
}
