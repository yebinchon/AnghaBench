
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_encoder {scalar_t__ rmx_type; struct drm_display_mode native_mode; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_OK ;
 int MODE_PANEL ;
 scalar_t__ RMX_OFF ;
 struct drm_encoder* amdgpu_connector_best_single_encoder (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static enum drm_mode_status amdgpu_connector_lvds_mode_valid(struct drm_connector *connector,
          struct drm_display_mode *mode)
{
 struct drm_encoder *encoder = amdgpu_connector_best_single_encoder(connector);

 if ((mode->hdisplay < 320) || (mode->vdisplay < 240))
  return MODE_PANEL;

 if (encoder) {
  struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
  struct drm_display_mode *native_mode = &amdgpu_encoder->native_mode;




  if ((mode->hdisplay > native_mode->hdisplay) ||
      (mode->vdisplay > native_mode->vdisplay))
   return MODE_PANEL;


  if (amdgpu_encoder->rmx_type == RMX_OFF) {
   if ((mode->hdisplay != native_mode->hdisplay) ||
       (mode->vdisplay != native_mode->vdisplay))
    return MODE_PANEL;
  }
 }

 return MODE_OK;
}
