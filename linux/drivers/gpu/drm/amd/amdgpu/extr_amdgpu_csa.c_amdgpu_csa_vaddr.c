
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int max_pfn; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 int AMDGPU_GPU_PAGE_SHIFT ;
 scalar_t__ AMDGPU_VA_RESERVED_SIZE ;
 int amdgpu_gmc_sign_extend (int) ;

uint64_t amdgpu_csa_vaddr(struct amdgpu_device *adev)
{
 uint64_t addr = adev->vm_manager.max_pfn << AMDGPU_GPU_PAGE_SHIFT;

 addr -= AMDGPU_VA_RESERVED_SIZE;
 addr = amdgpu_gmc_sign_extend(addr);

 return addr;
}
