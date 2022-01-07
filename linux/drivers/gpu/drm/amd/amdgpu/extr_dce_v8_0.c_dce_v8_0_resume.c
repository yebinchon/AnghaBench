
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ bl_encoder; int bl_level; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int amdgpu_atombios_encoder_set_backlight_level_to_reg (struct amdgpu_device*,int ) ;
 int amdgpu_display_backlight_get_level (struct amdgpu_device*,scalar_t__) ;
 int amdgpu_display_backlight_set_level (struct amdgpu_device*,scalar_t__,int ) ;
 int dce_v8_0_hw_init (void*) ;

__attribute__((used)) static int dce_v8_0_resume(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int ret;

 amdgpu_atombios_encoder_set_backlight_level_to_reg(adev,
          adev->mode_info.bl_level);

 ret = dce_v8_0_hw_init(handle);


 if (adev->mode_info.bl_encoder) {
  u8 bl_level = amdgpu_display_backlight_get_level(adev,
          adev->mode_info.bl_encoder);
  amdgpu_display_backlight_set_level(adev, adev->mode_info.bl_encoder,
          bl_level);
 }

 return ret;
}
