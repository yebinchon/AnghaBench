
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int saved_bo; void* cpu_addr; int * vcpu_bo; } ;
struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_2__ vce; TYPE_1__ firmware; } ;


 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int EINVAL ;
 unsigned int amdgpu_bo_size (int *) ;
 int amdgpu_vce_resume (struct amdgpu_device*) ;
 int memcpy_toio (void*,int ,unsigned int) ;
 int vce_v4_0_hw_init (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v4_0_resume(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int r;

 if (adev->vce.vcpu_bo == ((void*)0))
  return -EINVAL;

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
  unsigned size = amdgpu_bo_size(adev->vce.vcpu_bo);
  void *ptr = adev->vce.cpu_addr;

  memcpy_toio(ptr, adev->vce.saved_bo, size);
 } else {
  r = amdgpu_vce_resume(adev);
  if (r)
   return r;
 }

 return vce_v4_0_hw_init(adev);
}
