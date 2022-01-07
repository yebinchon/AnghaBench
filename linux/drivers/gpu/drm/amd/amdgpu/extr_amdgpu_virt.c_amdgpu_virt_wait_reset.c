
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_virt {TYPE_1__* ops; } ;
struct amdgpu_device {struct amdgpu_virt virt; } ;
struct TYPE_2__ {int (* wait_reset ) (struct amdgpu_device*) ;} ;


 int EINVAL ;
 int stub1 (struct amdgpu_device*) ;

int amdgpu_virt_wait_reset(struct amdgpu_device *adev)
{
 struct amdgpu_virt *virt = &adev->virt;

 if (!virt->ops || !virt->ops->wait_reset)
  return -EINVAL;

 return virt->ops->wait_reset(adev);
}
