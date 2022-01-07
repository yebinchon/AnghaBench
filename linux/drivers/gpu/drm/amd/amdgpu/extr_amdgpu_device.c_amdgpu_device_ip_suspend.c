
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_device_ip_suspend_phase1 (struct amdgpu_device*) ;
 int amdgpu_device_ip_suspend_phase2 (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int amdgpu_virt_release_full_gpu (struct amdgpu_device*,int) ;
 int amdgpu_virt_request_full_gpu (struct amdgpu_device*,int) ;

int amdgpu_device_ip_suspend(struct amdgpu_device *adev)
{
 int r;

 if (amdgpu_sriov_vf(adev))
  amdgpu_virt_request_full_gpu(adev, 0);

 r = amdgpu_device_ip_suspend_phase1(adev);
 if (r)
  return r;
 r = amdgpu_device_ip_suspend_phase2(adev);

 if (amdgpu_sriov_vf(adev))
  amdgpu_virt_release_full_gpu(adev, 0);

 return r;
}
