
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {int backlight_level; } ;
struct amdgpu_encoder {int devices; int encoder_id; struct amdgpu_encoder_atom_dig* enc_priv; struct drm_encoder base; } ;
struct TYPE_2__ {int firmware_flags; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 int ATOM_TRANSMITTER_ACTION_BL_BRIGHTNESS_CONTROL ;
 int ATOM_TRANSMITTER_ACTION_LCD_BLOFF ;
 int ATOM_TRANSMITTER_ACTION_LCD_BLON ;





 int amdgpu_atombios_encoder_set_backlight_level_to_reg (struct amdgpu_device*,int ) ;
 int amdgpu_atombios_encoder_setup_dig_transmitter (struct drm_encoder*,int ,int ,int ) ;

void
amdgpu_atombios_encoder_set_backlight_level(struct amdgpu_encoder *amdgpu_encoder,
         u8 level)
{
 struct drm_encoder *encoder = &amdgpu_encoder->base;
 struct drm_device *dev = amdgpu_encoder->base.dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder_atom_dig *dig;

 if (!(adev->mode_info.firmware_flags & ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU))
  return;

 if ((amdgpu_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT)) &&
     amdgpu_encoder->enc_priv) {
  dig = amdgpu_encoder->enc_priv;
  dig->backlight_level = level;
  amdgpu_atombios_encoder_set_backlight_level_to_reg(adev, dig->backlight_level);

  switch (amdgpu_encoder->encoder_id) {
  case 131:
  case 132:
  case 130:
  case 129:
  case 128:
   if (dig->backlight_level == 0)
    amdgpu_atombios_encoder_setup_dig_transmitter(encoder,
               ATOM_TRANSMITTER_ACTION_LCD_BLOFF, 0, 0);
   else {
    amdgpu_atombios_encoder_setup_dig_transmitter(encoder,
               ATOM_TRANSMITTER_ACTION_BL_BRIGHTNESS_CONTROL, 0, 0);
    amdgpu_atombios_encoder_setup_dig_transmitter(encoder,
               ATOM_TRANSMITTER_ACTION_LCD_BLON, 0, 0);
   }
   break;
  default:
   break;
  }
 }
}
