
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;





 int DRM_WARN (char*) ;
 int EINVAL ;
 scalar_t__ amdgpu_discovery ;
 int amdgpu_discovery_reg_base_init (struct amdgpu_device*) ;
 int navi10_reg_base_init (struct amdgpu_device*) ;
 int navi12_reg_base_init (struct amdgpu_device*) ;
 int navi14_reg_base_init (struct amdgpu_device*) ;

__attribute__((used)) static int nv_reg_base_init(struct amdgpu_device *adev)
{
 int r;

 if (amdgpu_discovery) {
  r = amdgpu_discovery_reg_base_init(adev);
  if (r) {
   DRM_WARN("failed to init reg base from ip discovery table, "
     "fallback to legacy init method\n");
   goto legacy_init;
  }

  return 0;
 }

legacy_init:
 switch (adev->asic_type) {
 case 130:
  navi10_reg_base_init(adev);
  break;
 case 128:
  navi14_reg_base_init(adev);
  break;
 case 129:
  navi12_reg_base_init(adev);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
