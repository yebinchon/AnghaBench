
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;

__attribute__((used)) static void intel_fixup_cur_wm_latency(struct drm_i915_private *dev_priv,
           u16 wm[5])
{

 if (IS_GEN(dev_priv, 5))
  wm[0] = 13;
}
