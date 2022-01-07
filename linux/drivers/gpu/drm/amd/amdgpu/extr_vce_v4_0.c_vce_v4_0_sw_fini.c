
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * saved_bo; } ;
struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_2__ vce; TYPE_1__ firmware; } ;


 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int amdgpu_vce_suspend (struct amdgpu_device*) ;
 int amdgpu_vce_sw_fini (struct amdgpu_device*) ;
 int amdgpu_virt_free_mm_table (struct amdgpu_device*) ;
 int kvfree (int *) ;

__attribute__((used)) static int vce_v4_0_sw_fini(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 amdgpu_virt_free_mm_table(adev);

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
  kvfree(adev->vce.saved_bo);
  adev->vce.saved_bo = ((void*)0);
 }

 r = amdgpu_vce_suspend(adev);
 if (r)
  return r;

 return amdgpu_vce_sw_fini(adev);
}
