
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;





__attribute__((used)) static int dce_v10_0_get_num_crtc(struct amdgpu_device *adev)
{
 int num_crtc = 0;

 switch (adev->asic_type) {
 case 129:
 case 128:
  num_crtc = 6;
  break;
 default:
  num_crtc = 0;
 }
 return num_crtc;
}
