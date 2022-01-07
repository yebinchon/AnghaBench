
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ smu_prv_buffer; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int amd_powerplay_destroy (struct amdgpu_device*) ;
 int amdgpu_bo_free_kernel (scalar_t__*,int *,int *) ;

__attribute__((used)) static void pp_late_fini(void *handle)
{
 struct amdgpu_device *adev = handle;

 if (adev->pm.smu_prv_buffer)
  amdgpu_bo_free_kernel(&adev->pm.smu_prv_buffer, ((void*)0), ((void*)0));
 amd_powerplay_destroy(adev);
}
