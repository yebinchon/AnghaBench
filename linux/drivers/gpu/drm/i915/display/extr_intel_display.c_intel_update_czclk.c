
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int czclk_freq; } ;


 int CCK_CZ_CLOCK_CONTROL ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int vlv_get_cck_clock_hpll (struct drm_i915_private*,char*,int ) ;

__attribute__((used)) static void intel_update_czclk(struct drm_i915_private *dev_priv)
{
 if (!(IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)))
  return;

 dev_priv->czclk_freq = vlv_get_cck_clock_hpll(dev_priv, "czclk",
            CCK_CZ_CLOCK_CONTROL);

 DRM_DEBUG_DRIVER("CZ clock rate: %d kHz\n", dev_priv->czclk_freq);
}
