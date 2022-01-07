
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_virt {int caps; TYPE_1__* ops; } ;
struct amdgpu_device {struct amdgpu_virt virt; } ;
struct TYPE_2__ {int (* reset_gpu ) (struct amdgpu_device*) ;} ;


 int AMDGPU_SRIOV_CAPS_RUNTIME ;
 int stub1 (struct amdgpu_device*) ;

int amdgpu_virt_reset_gpu(struct amdgpu_device *adev)
{
 struct amdgpu_virt *virt = &adev->virt;
 int r;

 if (virt->ops && virt->ops->reset_gpu) {
  r = virt->ops->reset_gpu(adev);
  if (r)
   return r;

  adev->virt.caps &= ~AMDGPU_SRIOV_CAPS_RUNTIME;
 }

 return 0;
}
