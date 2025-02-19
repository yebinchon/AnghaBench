
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_BAD ;
 int MODE_OK ;
 int drm_match_cea_mode (struct drm_display_mode*) ;

__attribute__((used)) static enum drm_mode_status
rk3066_hdmi_connector_mode_valid(struct drm_connector *connector,
     struct drm_display_mode *mode)
{
 u32 vic = drm_match_cea_mode(mode);

 if (vic > 1)
  return MODE_OK;
 else
  return MODE_BAD;
}
