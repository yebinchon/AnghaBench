
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_mode {int flags; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_MODE_FLAG_INTERLACE ;
 int MODE_NO_INTERLACE ;
 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status vc4_dpi_encoder_mode_valid(struct drm_encoder *encoder,
             const struct drm_display_mode *mode)
{
 if (mode->flags & DRM_MODE_FLAG_INTERLACE)
  return MODE_NO_INTERLACE;

 return MODE_OK;
}
