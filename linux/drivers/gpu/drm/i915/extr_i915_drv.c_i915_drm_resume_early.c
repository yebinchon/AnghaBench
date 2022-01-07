
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {int runtime_pm; int gt; int uncore; TYPE_1__ drm; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int EIO ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PCI_D0 ;
 int disable_rpm_wakeref_asserts (int *) ;
 int enable_rpm_wakeref_asserts (int *) ;
 int i915_rc6_ctx_wa_resume (struct drm_i915_private*) ;
 int intel_display_power_resume_early (struct drm_i915_private*) ;
 int intel_gt_check_and_clear_faults (int *) ;
 int intel_gt_sanitize (int *,int) ;
 int intel_power_domains_resume (struct drm_i915_private*) ;
 int intel_sanitize_gt_powersave (struct drm_i915_private*) ;
 int intel_uncore_resume_early (int *) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int vlv_resume_prepare (struct drm_i915_private*,int) ;

__attribute__((used)) static int i915_drm_resume_early(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct pci_dev *pdev = dev_priv->drm.pdev;
 int ret;
 ret = pci_set_power_state(pdev, PCI_D0);
 if (ret) {
  DRM_ERROR("failed to set PCI D0 power state (%d)\n", ret);
  return ret;
 }
 if (pci_enable_device(pdev))
  return -EIO;

 pci_set_master(pdev);

 disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);

 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  ret = vlv_resume_prepare(dev_priv, 0);
 if (ret)
  DRM_ERROR("Resume prepare failed: %d, continuing anyway\n",
     ret);

 intel_uncore_resume_early(&dev_priv->uncore);

 intel_gt_check_and_clear_faults(&dev_priv->gt);

 intel_display_power_resume_early(dev_priv);

 intel_sanitize_gt_powersave(dev_priv);

 intel_power_domains_resume(dev_priv);

 i915_rc6_ctx_wa_resume(dev_priv);

 intel_gt_sanitize(&dev_priv->gt, 1);

 enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);

 return ret;
}
