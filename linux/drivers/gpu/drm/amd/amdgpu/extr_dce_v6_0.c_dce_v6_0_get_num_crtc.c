
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;







__attribute__((used)) static int dce_v6_0_get_num_crtc(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 129:
 case 130:
 case 128:
  return 6;
 case 131:
  return 2;
 default:
  return 0;
 }
}
