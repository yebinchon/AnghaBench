
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int valleyview_cleanup_pctx (struct drm_i915_private*) ;

__attribute__((used)) static void valleyview_cleanup_gt_powersave(struct drm_i915_private *dev_priv)
{
 valleyview_cleanup_pctx(dev_priv);
}
