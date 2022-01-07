
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int aper_base; } ;
struct TYPE_8__ {int mode_config_initialized; } ;
struct radeon_device {scalar_t__ family; int num_crtc; TYPE_4__* ddev; scalar_t__ is_atom_bios; TYPE_3__ mc; TYPE_1__ mode_info; } ;
struct TYPE_9__ {int async_page_flip; int max_width; int max_height; int preferred_depth; int prefer_shadow; int fb_base; int * funcs; } ;
struct TYPE_11__ {TYPE_2__ mode_config; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 scalar_t__ CHIP_R600 ;
 int drm_kms_helper_poll_init (TYPE_4__*) ;
 int drm_mode_config_init (TYPE_4__*) ;
 int radeon_afmt_init (struct radeon_device*) ;
 int radeon_atom_disp_eng_pll_init (struct radeon_device*) ;
 int radeon_atom_encoder_init (struct radeon_device*) ;
 int radeon_combios_check_hardcoded_edid (struct radeon_device*) ;
 int radeon_crtc_init (TYPE_4__*,int) ;
 int radeon_fbdev_init (struct radeon_device*) ;
 int radeon_hpd_init (struct radeon_device*) ;
 int radeon_i2c_init (struct radeon_device*) ;
 int radeon_mode_funcs ;
 int radeon_modeset_create_props (struct radeon_device*) ;
 int radeon_pm_late_init (struct radeon_device*) ;
 int radeon_setup_enc_conn (TYPE_4__*) ;
 int radeon_use_pflipirq ;

int radeon_modeset_init(struct radeon_device *rdev)
{
 int i;
 int ret;

 drm_mode_config_init(rdev->ddev);
 rdev->mode_info.mode_config_initialized = 1;

 rdev->ddev->mode_config.funcs = &radeon_mode_funcs;

 if (radeon_use_pflipirq == 2 && rdev->family >= CHIP_R600)
  rdev->ddev->mode_config.async_page_flip = 1;

 if (ASIC_IS_DCE5(rdev)) {
  rdev->ddev->mode_config.max_width = 16384;
  rdev->ddev->mode_config.max_height = 16384;
 } else if (ASIC_IS_AVIVO(rdev)) {
  rdev->ddev->mode_config.max_width = 8192;
  rdev->ddev->mode_config.max_height = 8192;
 } else {
  rdev->ddev->mode_config.max_width = 4096;
  rdev->ddev->mode_config.max_height = 4096;
 }

 rdev->ddev->mode_config.preferred_depth = 24;
 rdev->ddev->mode_config.prefer_shadow = 1;

 rdev->ddev->mode_config.fb_base = rdev->mc.aper_base;

 ret = radeon_modeset_create_props(rdev);
 if (ret) {
  return ret;
 }


 radeon_i2c_init(rdev);


 if (!rdev->is_atom_bios) {

  radeon_combios_check_hardcoded_edid(rdev);
 }


 for (i = 0; i < rdev->num_crtc; i++) {
  radeon_crtc_init(rdev->ddev, i);
 }


 ret = radeon_setup_enc_conn(rdev->ddev);
 if (!ret) {
  return ret;
 }


 if (rdev->is_atom_bios) {
  radeon_atom_encoder_init(rdev);
  radeon_atom_disp_eng_pll_init(rdev);
 }


 radeon_hpd_init(rdev);


 radeon_afmt_init(rdev);

 radeon_fbdev_init(rdev);
 drm_kms_helper_poll_init(rdev->ddev);


 ret = radeon_pm_late_init(rdev);

 return 0;
}
