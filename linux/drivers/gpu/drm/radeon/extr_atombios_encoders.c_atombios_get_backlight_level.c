
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int firmware_flags; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU ;
 int radeon_atom_get_backlight_level_from_reg (struct radeon_device*) ;

u8
atombios_get_backlight_level(struct radeon_encoder *radeon_encoder)
{
 struct drm_device *dev = radeon_encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;

 if (!(rdev->mode_info.firmware_flags & ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU))
  return 0;

 return radeon_atom_get_backlight_level_from_reg(rdev);
}
