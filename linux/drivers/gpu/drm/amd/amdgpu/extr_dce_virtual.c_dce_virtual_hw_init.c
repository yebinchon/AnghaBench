
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
 int dce_v10_0_disable_dce (struct amdgpu_device*) ;
 int dce_v11_0_disable_dce (struct amdgpu_device*) ;
 int dce_v6_0_disable_dce (struct amdgpu_device*) ;
 int dce_v8_0_disable_dce (struct amdgpu_device*) ;

__attribute__((used)) static int dce_virtual_hw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 switch (adev->asic_type) {
 case 143:
 case 131:
  dce_v10_0_disable_dce(adev);
  break;
 case 144:
 case 133:
 case 135:
 case 134:
 case 129:
  dce_v11_0_disable_dce(adev);
  break;
 case 130:




  break;
 default:
  break;
 }
 return 0;
}
