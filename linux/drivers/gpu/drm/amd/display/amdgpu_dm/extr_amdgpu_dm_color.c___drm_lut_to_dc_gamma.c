
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_color_lut {int blue; int green; int red; } ;
struct TYPE_2__ {void** blue; void** green; void** red; } ;
struct dc_gamma {TYPE_1__ entries; } ;


 int MAX_COLOR_LEGACY_LUT_ENTRIES ;
 int MAX_COLOR_LUT_ENTRIES ;
 int MAX_DRM_LUT_VALUE ;
 void* dc_fixpt_from_fraction (int ,int ) ;
 void* dc_fixpt_from_int (int ) ;
 int drm_color_lut_extract (int ,int) ;

__attribute__((used)) static void __drm_lut_to_dc_gamma(const struct drm_color_lut *lut,
      struct dc_gamma *gamma, bool is_legacy)
{
 uint32_t r, g, b;
 int i;

 if (is_legacy) {
  for (i = 0; i < MAX_COLOR_LEGACY_LUT_ENTRIES; i++) {
   r = drm_color_lut_extract(lut[i].red, 16);
   g = drm_color_lut_extract(lut[i].green, 16);
   b = drm_color_lut_extract(lut[i].blue, 16);

   gamma->entries.red[i] = dc_fixpt_from_int(r);
   gamma->entries.green[i] = dc_fixpt_from_int(g);
   gamma->entries.blue[i] = dc_fixpt_from_int(b);
  }
  return;
 }


 for (i = 0; i < MAX_COLOR_LUT_ENTRIES; i++) {
  r = drm_color_lut_extract(lut[i].red, 16);
  g = drm_color_lut_extract(lut[i].green, 16);
  b = drm_color_lut_extract(lut[i].blue, 16);

  gamma->entries.red[i] = dc_fixpt_from_fraction(r, MAX_DRM_LUT_VALUE);
  gamma->entries.green[i] = dc_fixpt_from_fraction(g, MAX_DRM_LUT_VALUE);
  gamma->entries.blue[i] = dc_fixpt_from_fraction(b, MAX_DRM_LUT_VALUE);
 }
}
