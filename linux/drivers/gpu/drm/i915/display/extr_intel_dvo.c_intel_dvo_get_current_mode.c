
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct drm_display_mode {int type; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_TYPE_PREFERRED ;
 int drm_mode_debug_printmodeline (struct drm_display_mode*) ;
 struct drm_display_mode* intel_encoder_current_mode (struct intel_encoder*) ;

__attribute__((used)) static struct drm_display_mode *
intel_dvo_get_current_mode(struct intel_encoder *encoder)
{
 struct drm_display_mode *mode;

 mode = intel_encoder_current_mode(encoder);
 if (mode) {
  DRM_DEBUG_KMS("using current (BIOS) mode: ");
  drm_mode_debug_printmodeline(mode);
  mode->type |= DRM_MODE_TYPE_PREFERRED;
 }

 return mode;
}
