
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tv_mode {scalar_t__ refresh; } ;
struct drm_display_mode {int flags; int clock; } ;
struct drm_connector {int dev; int state; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int max_dotclk_freq; } ;


 int DRM_MODE_FLAG_DBLSCAN ;
 int MODE_CLOCK_HIGH ;
 int MODE_CLOCK_RANGE ;
 int MODE_NO_DBLESCAN ;
 int MODE_OK ;
 int abs (scalar_t__) ;
 int drm_mode_vrefresh (struct drm_display_mode*) ;
 struct tv_mode* intel_tv_mode_find (int ) ;
 TYPE_1__* to_i915 (int ) ;

__attribute__((used)) static enum drm_mode_status
intel_tv_mode_valid(struct drm_connector *connector,
      struct drm_display_mode *mode)
{
 const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
 int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;

 if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return MODE_NO_DBLESCAN;

 if (mode->clock > max_dotclk)
  return MODE_CLOCK_HIGH;


 if (tv_mode && abs(tv_mode->refresh - drm_mode_vrefresh(mode) * 1000)
    < 1000)
  return MODE_OK;

 return MODE_CLOCK_RANGE;
}
