
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int vlv_pctx; } ;
struct drm_i915_gem_object {int dummy; } ;


 struct drm_i915_gem_object* fetch_and_zero (int *) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;

__attribute__((used)) static void valleyview_cleanup_pctx(struct drm_i915_private *dev_priv)
{
 struct drm_i915_gem_object *pctx;

 pctx = fetch_and_zero(&dev_priv->vlv_pctx);
 if (pctx)
  i915_gem_object_put(pctx);
}
