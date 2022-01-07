
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int max_dotclk_freq; } ;
struct drm_display_mode {int flags; int clock; int hdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_MODE_FLAG_DBLSCAN ;
 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int MODE_CLOCK_HIGH ;
 int MODE_CLOCK_LOW ;
 int MODE_H_ILLEGAL ;
 int MODE_NO_DBLESCAN ;
 int MODE_OK ;
 int ironlake_get_lanes_required (int,int,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static enum drm_mode_status
intel_crt_mode_valid(struct drm_connector *connector,
       struct drm_display_mode *mode)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 int max_dotclk = dev_priv->max_dotclk_freq;
 int max_clock;

 if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return MODE_NO_DBLESCAN;

 if (mode->clock < 25000)
  return MODE_CLOCK_LOW;

 if (HAS_PCH_LPT(dev_priv))
  max_clock = 180000;
 else if (IS_VALLEYVIEW(dev_priv))




  max_clock = 270000;
 else if (IS_GEN_RANGE(dev_priv, 3, 4))
  max_clock = 400000;
 else
  max_clock = 350000;
 if (mode->clock > max_clock)
  return MODE_CLOCK_HIGH;

 if (mode->clock > max_dotclk)
  return MODE_CLOCK_HIGH;


 if (HAS_PCH_LPT(dev_priv) &&
     (ironlake_get_lanes_required(mode->clock, 270000, 24) > 2))
  return MODE_CLOCK_HIGH;


 if (mode->hdisplay > 4096)
  return MODE_H_ILLEGAL;

 return MODE_OK;
}
