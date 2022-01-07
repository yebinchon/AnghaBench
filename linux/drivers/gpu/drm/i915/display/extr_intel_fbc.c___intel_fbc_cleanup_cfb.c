
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbc {int * compressed_llb; int compressed_fb; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 scalar_t__ drm_mm_node_allocated (int *) ;
 int i915_gem_stolen_remove_node (struct drm_i915_private*,int *) ;
 int kfree (int *) ;

__attribute__((used)) static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
{
 struct intel_fbc *fbc = &dev_priv->fbc;

 if (drm_mm_node_allocated(&fbc->compressed_fb))
  i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);

 if (fbc->compressed_llb) {
  i915_gem_stolen_remove_node(dev_priv, fbc->compressed_llb);
  kfree(fbc->compressed_llb);
 }
}
