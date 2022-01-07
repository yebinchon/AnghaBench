
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int bridge_dev; int uncore; } ;


 int intel_engines_cleanup (struct drm_i915_private*) ;
 int intel_teardown_mchbar (struct drm_i915_private*) ;
 int intel_uncore_fini_mmio (int *) ;
 int pci_dev_put (int ) ;

__attribute__((used)) static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
{
 intel_engines_cleanup(dev_priv);
 intel_teardown_mchbar(dev_priv);
 intel_uncore_fini_mmio(&dev_priv->uncore);
 pci_dev_put(dev_priv->bridge_dev);
}
