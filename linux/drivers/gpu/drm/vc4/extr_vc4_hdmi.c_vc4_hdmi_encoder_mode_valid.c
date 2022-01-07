
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int HSM_CLOCK_FREQ ;
 int MODE_CLOCK_HIGH ;
 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status
vc4_hdmi_encoder_mode_valid(struct drm_encoder *crtc,
       const struct drm_display_mode *mode)
{




 if (mode->clock > HSM_CLOCK_FREQ / (1000 * 108 / 100))
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
