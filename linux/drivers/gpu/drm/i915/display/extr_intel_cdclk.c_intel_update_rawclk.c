
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int rawclk_freq; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 scalar_t__ INTEL_PCH_TYPE (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_PINEVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 scalar_t__ PCH_CNP ;
 int cnp_rawclk (struct drm_i915_private*) ;
 int g4x_hrawclk (struct drm_i915_private*) ;
 int pch_rawclk (struct drm_i915_private*) ;
 int vlv_hrawclk (struct drm_i915_private*) ;

void intel_update_rawclk(struct drm_i915_private *dev_priv)
{
 if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
  dev_priv->rawclk_freq = cnp_rawclk(dev_priv);
 else if (HAS_PCH_SPLIT(dev_priv))
  dev_priv->rawclk_freq = pch_rawclk(dev_priv);
 else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  dev_priv->rawclk_freq = vlv_hrawclk(dev_priv);
 else if (IS_G4X(dev_priv) || IS_PINEVIEW(dev_priv))
  dev_priv->rawclk_freq = g4x_hrawclk(dev_priv);
 else

  return;

 DRM_DEBUG_DRIVER("rawclk rate: %d kHz\n", dev_priv->rawclk_freq);
}
