
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
 int DRM_INFO (char*) ;
 int amdgpu_device_ip_check_soft_reset (struct amdgpu_device*) ;
 int amdgpu_gpu_recovery ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;

bool amdgpu_device_should_recover_gpu(struct amdgpu_device *adev)
{
 if (!amdgpu_device_ip_check_soft_reset(adev)) {
  DRM_INFO("Timeout, but no hardware hang detected.\n");
  return 0;
 }

 if (amdgpu_gpu_recovery == 0)
  goto disabled;

 if (amdgpu_sriov_vf(adev))
  return 1;

 if (amdgpu_gpu_recovery == -1) {
  switch (adev->asic_type) {
  case 140:
  case 138:
  case 132:
  case 133:
  case 139:
  case 137:
  case 136:
  case 135:
  case 128:
  case 129:
  case 131:
  case 130:
  case 134:
   break;
  default:
   goto disabled;
  }
 }

 return 1;

disabled:
  DRM_INFO("GPU recovery disabled.\n");
  return 0;
}
