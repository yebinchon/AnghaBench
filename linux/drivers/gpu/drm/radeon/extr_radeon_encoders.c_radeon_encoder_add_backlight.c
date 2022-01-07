
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct drm_device* dev; } ;
struct radeon_encoder {int devices; TYPE_2__ base; } ;
struct radeon_device {scalar_t__ family; scalar_t__ is_atom_bios; TYPE_1__* pdev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int device; int subsystem_vendor; int subsystem_device; } ;


 int ATOM_DEVICE_LCD_SUPPORT ;
 scalar_t__ CHIP_R600 ;
 int radeon_atom_backlight_init (struct radeon_encoder*,struct drm_connector*) ;
 int radeon_backlight ;
 int radeon_legacy_backlight_init (struct radeon_encoder*,struct drm_connector*) ;

__attribute__((used)) static void radeon_encoder_add_backlight(struct radeon_encoder *radeon_encoder,
      struct drm_connector *connector)
{
 struct drm_device *dev = radeon_encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 bool use_bl = 0;

 if (!(radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT)))
  return;

 if (radeon_backlight == 0) {
  return;
 } else if (radeon_backlight == 1) {
  use_bl = 1;
 } else if (radeon_backlight == -1) {


  if ((rdev->pdev->device == 0x9583) &&
      (rdev->pdev->subsystem_vendor == 0x1734) &&
      (rdev->pdev->subsystem_device == 0x1107))
   use_bl = 0;



  else if (rdev->family < CHIP_R600)
   use_bl = 0;

  else
   use_bl = 1;
 }

 if (use_bl) {
  if (rdev->is_atom_bios)
   radeon_atom_backlight_init(radeon_encoder, connector);
  else
   radeon_legacy_backlight_init(radeon_encoder, connector);
 }
}
