
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;

__attribute__((used)) static bool intel_tv_source_too_wide(struct drm_i915_private *dev_priv,
         int hdisplay)
{
 return IS_GEN(dev_priv, 3) && hdisplay > 1024;
}
