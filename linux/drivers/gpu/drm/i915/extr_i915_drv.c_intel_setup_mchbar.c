
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int mchbar_need_disable; int bridge_dev; } ;


 int DEVEN ;
 int DEVEN_MCHBAR_EN ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_I915G (struct drm_i915_private*) ;
 scalar_t__ IS_I915GM (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int MCHBAR_I915 ;
 int MCHBAR_I965 ;
 scalar_t__ intel_alloc_mchbar_resource (struct drm_i915_private*) ;
 int pci_read_config_dword (int ,int,int*) ;
 int pci_write_config_dword (int ,int,int) ;

__attribute__((used)) static void
intel_setup_mchbar(struct drm_i915_private *dev_priv)
{
 int mchbar_reg = INTEL_GEN(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 u32 temp;
 bool enabled;

 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  return;

 dev_priv->mchbar_need_disable = 0;

 if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
  pci_read_config_dword(dev_priv->bridge_dev, DEVEN, &temp);
  enabled = !!(temp & DEVEN_MCHBAR_EN);
 } else {
  pci_read_config_dword(dev_priv->bridge_dev, mchbar_reg, &temp);
  enabled = temp & 1;
 }


 if (enabled)
  return;

 if (intel_alloc_mchbar_resource(dev_priv))
  return;

 dev_priv->mchbar_need_disable = 1;


 if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
  pci_write_config_dword(dev_priv->bridge_dev, DEVEN,
           temp | DEVEN_MCHBAR_EN);
 } else {
  pci_read_config_dword(dev_priv->bridge_dev, mchbar_reg, &temp);
  pci_write_config_dword(dev_priv->bridge_dev, mchbar_reg, temp | 1);
 }
}
