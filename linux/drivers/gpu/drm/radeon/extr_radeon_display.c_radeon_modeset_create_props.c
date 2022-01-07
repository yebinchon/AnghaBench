
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* output_csc_property; void* dither_property; void* audio_property; void* underscan_vborder_property; void* underscan_hborder_property; void* underscan_property; void* tv_std_property; void* load_detect_property; void* tmds_pll_property; void* coherent_mode_property; } ;
struct radeon_device {int ddev; TYPE_1__ mode_info; scalar_t__ is_atom_bios; } ;


 int ARRAY_SIZE (int ) ;
 int ASIC_IS_AVIVO (struct radeon_device*) ;
 int ENOMEM ;
 int drm_mode_create_scaling_mode_property (int ) ;
 void* drm_property_create_enum (int ,int ,char*,int ,int) ;
 void* drm_property_create_range (int ,int ,char*,int ,int) ;
 int radeon_audio_enum_list ;
 int radeon_dither_enum_list ;
 int radeon_output_csc_enum_list ;
 int radeon_tmds_pll_enum_list ;
 int radeon_tv_std_enum_list ;
 int radeon_underscan_enum_list ;

__attribute__((used)) static int radeon_modeset_create_props(struct radeon_device *rdev)
{
 int sz;

 if (rdev->is_atom_bios) {
  rdev->mode_info.coherent_mode_property =
   drm_property_create_range(rdev->ddev, 0 , "coherent", 0, 1);
  if (!rdev->mode_info.coherent_mode_property)
   return -ENOMEM;
 }

 if (!ASIC_IS_AVIVO(rdev)) {
  sz = ARRAY_SIZE(radeon_tmds_pll_enum_list);
  rdev->mode_info.tmds_pll_property =
   drm_property_create_enum(rdev->ddev, 0,
         "tmds_pll",
         radeon_tmds_pll_enum_list, sz);
 }

 rdev->mode_info.load_detect_property =
  drm_property_create_range(rdev->ddev, 0, "load detection", 0, 1);
 if (!rdev->mode_info.load_detect_property)
  return -ENOMEM;

 drm_mode_create_scaling_mode_property(rdev->ddev);

 sz = ARRAY_SIZE(radeon_tv_std_enum_list);
 rdev->mode_info.tv_std_property =
  drm_property_create_enum(rdev->ddev, 0,
        "tv standard",
        radeon_tv_std_enum_list, sz);

 sz = ARRAY_SIZE(radeon_underscan_enum_list);
 rdev->mode_info.underscan_property =
  drm_property_create_enum(rdev->ddev, 0,
        "underscan",
        radeon_underscan_enum_list, sz);

 rdev->mode_info.underscan_hborder_property =
  drm_property_create_range(rdev->ddev, 0,
     "underscan hborder", 0, 128);
 if (!rdev->mode_info.underscan_hborder_property)
  return -ENOMEM;

 rdev->mode_info.underscan_vborder_property =
  drm_property_create_range(rdev->ddev, 0,
     "underscan vborder", 0, 128);
 if (!rdev->mode_info.underscan_vborder_property)
  return -ENOMEM;

 sz = ARRAY_SIZE(radeon_audio_enum_list);
 rdev->mode_info.audio_property =
  drm_property_create_enum(rdev->ddev, 0,
      "audio",
      radeon_audio_enum_list, sz);

 sz = ARRAY_SIZE(radeon_dither_enum_list);
 rdev->mode_info.dither_property =
  drm_property_create_enum(rdev->ddev, 0,
      "dither",
      radeon_dither_enum_list, sz);

 sz = ARRAY_SIZE(radeon_output_csc_enum_list);
 rdev->mode_info.output_csc_property =
  drm_property_create_enum(rdev->ddev, 0,
      "output_csc",
      radeon_output_csc_enum_list, sz);

 return 0;
}
