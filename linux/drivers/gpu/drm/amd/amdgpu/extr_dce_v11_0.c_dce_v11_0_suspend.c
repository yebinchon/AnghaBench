
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bl_level; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int amdgpu_atombios_encoder_get_backlight_level_from_reg (struct amdgpu_device*) ;
 int dce_v11_0_hw_fini (void*) ;

__attribute__((used)) static int dce_v11_0_suspend(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->mode_info.bl_level =
  amdgpu_atombios_encoder_get_backlight_level_from_reg(adev);

 return dce_v11_0_hw_fini(handle);
}
