
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cpu_addr; scalar_t__ gpu_addr; int bo; } ;
struct TYPE_3__ {TYPE_2__ mm_table; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int DRM_ERROR (char*,int) ;
 int DRM_INFO (char*,scalar_t__,scalar_t__) ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int ,int ,int ,int *,scalar_t__*,void*) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int memset (void*,int ,int ) ;

int amdgpu_virt_alloc_mm_table(struct amdgpu_device *adev)
{
 int r;

 if (!amdgpu_sriov_vf(adev) || adev->virt.mm_table.gpu_addr)
  return 0;

 r = amdgpu_bo_create_kernel(adev, PAGE_SIZE, PAGE_SIZE,
        AMDGPU_GEM_DOMAIN_VRAM,
        &adev->virt.mm_table.bo,
        &adev->virt.mm_table.gpu_addr,
        (void *)&adev->virt.mm_table.cpu_addr);
 if (r) {
  DRM_ERROR("failed to alloc mm table and error = %d.\n", r);
  return r;
 }

 memset((void *)adev->virt.mm_table.cpu_addr, 0, PAGE_SIZE);
 DRM_INFO("MM table gpu addr = 0x%llx, cpu addr = %p.\n",
   adev->virt.mm_table.gpu_addr,
   adev->virt.mm_table.cpu_addr);
 return 0;
}
