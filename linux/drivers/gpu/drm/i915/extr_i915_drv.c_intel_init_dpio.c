
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int DPIO_PHY_IOSF_PORT ;


 int IOSF_PORT_DPIO ;
 int IOSF_PORT_DPIO_2 ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;

__attribute__((used)) static void intel_init_dpio(struct drm_i915_private *dev_priv)
{





 if (IS_CHERRYVIEW(dev_priv)) {
  DPIO_PHY_IOSF_PORT(DPIO_PHY0) = IOSF_PORT_DPIO_2;
  DPIO_PHY_IOSF_PORT(DPIO_PHY1) = IOSF_PORT_DPIO;
 } else if (IS_VALLEYVIEW(dev_priv)) {
  DPIO_PHY_IOSF_PORT(DPIO_PHY0) = IOSF_PORT_DPIO;
 }
}
