
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int clock; int flags; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_MODE_FLAG_DBLCLK ;
 int MODE_CLOCK_LOW ;
 int MODE_H_ILLEGAL ;
 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status
radeon_dp_mst_mode_valid(struct drm_connector *connector,
   struct drm_display_mode *mode)
{

 if (mode->clock < 10000)
  return MODE_CLOCK_LOW;

 if (mode->flags & DRM_MODE_FLAG_DBLCLK)
  return MODE_H_ILLEGAL;

 return MODE_OK;
}
