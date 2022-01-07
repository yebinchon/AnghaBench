
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {int runtime_pm; int suspend_count; TYPE_1__ drm; } ;
struct drm_device {int dummy; } ;
typedef int pci_power_t ;


 int FBINFO_STATE_SUSPENDED ;
 int PCI_D1 ;
 int PCI_D3cold ;
 int disable_rpm_wakeref_asserts (int *) ;
 int drm_kms_helper_poll_disable (struct drm_device*) ;
 int enable_rpm_wakeref_asserts (int *) ;
 int i915_gem_suspend_gtt_mappings (struct drm_i915_private*) ;
 int i915_save_state (struct drm_i915_private*) ;
 int intel_csr_ucode_suspend (struct drm_i915_private*) ;
 int intel_display_suspend (struct drm_device*) ;
 int intel_dp_mst_suspend (struct drm_i915_private*) ;
 int intel_fbdev_set_suspend (struct drm_device*,int ,int) ;
 int intel_hpd_cancel_work (struct drm_i915_private*) ;
 int intel_opregion_suspend (struct drm_i915_private*,int ) ;
 int intel_power_domains_disable (struct drm_i915_private*) ;
 int intel_runtime_pm_disable_interrupts (struct drm_i915_private*) ;
 int intel_suspend_encoders (struct drm_i915_private*) ;
 int intel_suspend_hw (struct drm_i915_private*) ;
 int pci_save_state (struct pci_dev*) ;
 scalar_t__ suspend_to_idle (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static int i915_drm_suspend(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct pci_dev *pdev = dev_priv->drm.pdev;
 pci_power_t opregion_target_state;

 disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);



 intel_power_domains_disable(dev_priv);

 drm_kms_helper_poll_disable(dev);

 pci_save_state(pdev);

 intel_display_suspend(dev);

 intel_dp_mst_suspend(dev_priv);

 intel_runtime_pm_disable_interrupts(dev_priv);
 intel_hpd_cancel_work(dev_priv);

 intel_suspend_encoders(dev_priv);

 intel_suspend_hw(dev_priv);

 i915_gem_suspend_gtt_mappings(dev_priv);

 i915_save_state(dev_priv);

 opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
 intel_opregion_suspend(dev_priv, opregion_target_state);

 intel_fbdev_set_suspend(dev, FBINFO_STATE_SUSPENDED, 1);

 dev_priv->suspend_count++;

 intel_csr_ucode_suspend(dev_priv);

 enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);

 return 0;
}
