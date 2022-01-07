
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int WM_DIRTY_LP_ALL ;
 int _ilk_disable_lp_wm (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

bool ilk_disable_lp_wm(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);

 return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
}
