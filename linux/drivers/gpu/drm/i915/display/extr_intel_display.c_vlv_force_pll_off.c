
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 int chv_disable_pll (struct drm_i915_private*,int) ;
 int vlv_disable_pll (struct drm_i915_private*,int) ;

void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 if (IS_CHERRYVIEW(dev_priv))
  chv_disable_pll(dev_priv, pipe);
 else
  vlv_disable_pll(dev_priv, pipe);
}
