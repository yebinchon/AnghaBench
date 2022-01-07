
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
__attribute__((used)) static int dce_v11_0_get_num_crtc (struct amdgpu_device *adev)
{
 int num_crtc = 0;

 switch (adev->asic_type) {
 case 133:
  num_crtc = 3;
  break;
 case 129:
  num_crtc = 2;
  break;
 case 132:
 case 128:
  num_crtc = 6;
  break;
 case 131:
 case 130:
  num_crtc = 5;
  break;
 default:
  num_crtc = 0;
 }
 return num_crtc;
}
