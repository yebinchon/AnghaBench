
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_display_mode* fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_display_mode {int flags; scalar_t__ hdisplay; scalar_t__ vdisplay; int clock; } ;
struct drm_connector {int dev; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_4__ {int max_dotclk_freq; } ;


 int DRM_MODE_FLAG_DBLSCAN ;
 int MODE_CLOCK_HIGH ;
 int MODE_NO_DBLESCAN ;
 int MODE_OK ;
 int MODE_PANEL ;
 TYPE_2__* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_mode_status
intel_lvds_mode_valid(struct drm_connector *connector,
        struct drm_display_mode *mode)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 int max_pixclk = to_i915(connector->dev)->max_dotclk_freq;

 if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return MODE_NO_DBLESCAN;
 if (mode->hdisplay > fixed_mode->hdisplay)
  return MODE_PANEL;
 if (mode->vdisplay > fixed_mode->vdisplay)
  return MODE_PANEL;
 if (fixed_mode->clock > max_pixclk)
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
