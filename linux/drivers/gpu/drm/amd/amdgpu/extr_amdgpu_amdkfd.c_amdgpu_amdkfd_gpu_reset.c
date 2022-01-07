
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_device_gpu_recover (struct amdgpu_device*,int *) ;
 scalar_t__ amdgpu_device_should_recover_gpu (struct amdgpu_device*) ;

void amdgpu_amdkfd_gpu_reset(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;

 if (amdgpu_device_should_recover_gpu(adev))
  amdgpu_device_gpu_recover(adev, ((void*)0));
}
