
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_CLOCK_HIGH ;
 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status
sun8i_dw_hdmi_mode_valid_a83t(struct drm_connector *connector,
         const struct drm_display_mode *mode)
{
 if (mode->clock > 297000)
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
