
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_display_mode {int height_mm; int width_mm; } ;
struct TYPE_2__ {int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int amdgpu_connector_add_common_modes (struct drm_encoder*,struct drm_connector*) ;
 struct drm_encoder* amdgpu_connector_best_single_encoder (struct drm_connector*) ;
 int amdgpu_connector_ddc_get_modes (struct drm_connector*) ;
 int amdgpu_connector_fixup_lcd_native_mode (struct drm_encoder*,struct drm_connector*) ;
 int amdgpu_connector_get_edid (struct drm_connector*) ;
 struct drm_display_mode* amdgpu_connector_lcd_native_mode (struct drm_encoder*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;

__attribute__((used)) static int amdgpu_connector_lvds_get_modes(struct drm_connector *connector)
{
 struct drm_encoder *encoder;
 int ret = 0;
 struct drm_display_mode *mode;

 amdgpu_connector_get_edid(connector);
 ret = amdgpu_connector_ddc_get_modes(connector);
 if (ret > 0) {
  encoder = amdgpu_connector_best_single_encoder(connector);
  if (encoder) {
   amdgpu_connector_fixup_lcd_native_mode(encoder, connector);

   amdgpu_connector_add_common_modes(encoder, connector);
  }
  return ret;
 }

 encoder = amdgpu_connector_best_single_encoder(connector);
 if (!encoder)
  return 0;


 mode = amdgpu_connector_lcd_native_mode(encoder);
 if (mode) {
  ret = 1;
  drm_mode_probed_add(connector, mode);

  connector->display_info.width_mm = mode->width_mm;
  connector->display_info.height_mm = mode->height_mm;

  amdgpu_connector_add_common_modes(encoder, connector);
 }

 return ret;
}
