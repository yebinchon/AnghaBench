
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct radeon_encoder {scalar_t__ rmx_type; struct drm_display_mode native_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_OK ;
 int MODE_PANEL ;
 scalar_t__ RMX_OFF ;
 struct drm_encoder* radeon_best_single_encoder (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static enum drm_mode_status radeon_lvds_mode_valid(struct drm_connector *connector,
      struct drm_display_mode *mode)
{
 struct drm_encoder *encoder = radeon_best_single_encoder(connector);

 if ((mode->hdisplay < 320) || (mode->vdisplay < 240))
  return MODE_PANEL;

 if (encoder) {
  struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
  struct drm_display_mode *native_mode = &radeon_encoder->native_mode;




  if ((mode->hdisplay > native_mode->hdisplay) ||
      (mode->vdisplay > native_mode->vdisplay))
   return MODE_PANEL;


  if (radeon_encoder->rmx_type == RMX_OFF) {
   if ((mode->hdisplay != native_mode->hdisplay) ||
       (mode->vdisplay != native_mode->vdisplay))
    return MODE_PANEL;
  }
 }

 return MODE_OK;
}
