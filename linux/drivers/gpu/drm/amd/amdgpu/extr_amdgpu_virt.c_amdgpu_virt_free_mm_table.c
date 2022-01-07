
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ gpu_addr; int cpu_addr; int bo; } ;
struct TYPE_4__ {TYPE_1__ mm_table; } ;
struct amdgpu_device {TYPE_2__ virt; } ;


 int amdgpu_bo_free_kernel (int *,scalar_t__*,void*) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;

void amdgpu_virt_free_mm_table(struct amdgpu_device *adev)
{
 if (!amdgpu_sriov_vf(adev) || !adev->virt.mm_table.gpu_addr)
  return;

 amdgpu_bo_free_kernel(&adev->virt.mm_table.bo,
         &adev->virt.mm_table.gpu_addr,
         (void *)&adev->virt.mm_table.cpu_addr);
 adev->virt.mm_table.gpu_addr = 0;
}
