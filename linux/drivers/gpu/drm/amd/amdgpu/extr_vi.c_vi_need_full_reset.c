
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
__attribute__((used)) static bool vi_need_full_reset(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 135:
 case 130:

  return 0;
 case 134:
 case 129:

  return 1;
 case 133:
 case 132:
 case 131:
 case 128:
 default:

  return 1;
 }
}
