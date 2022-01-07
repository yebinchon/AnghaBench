
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_5__ {int work; } ;
struct TYPE_7__ {TYPE_1__ hangcheck; } ;
struct TYPE_6__ {struct pci_dev* pdev; } ;
struct drm_i915_private {int runtime_pm; TYPE_3__ gt; TYPE_2__ drm; } ;


 int cancel_delayed_work_sync (int *) ;
 int disable_rpm_wakeref_asserts (int *) ;
 int drm_atomic_helper_shutdown (TYPE_2__*) ;
 int enable_rpm_wakeref_asserts (int *) ;
 int i915_driver_hw_remove (struct drm_i915_private*) ;
 int i915_driver_unregister (struct drm_i915_private*) ;
 int i915_gem_driver_remove (struct drm_i915_private*) ;
 int i915_gem_suspend (struct drm_i915_private*) ;
 int i915_reset_error_state (struct drm_i915_private*) ;
 int intel_bios_driver_remove (struct drm_i915_private*) ;
 int intel_csr_ucode_fini (struct drm_i915_private*) ;
 int intel_gt_set_wedged (TYPE_3__*) ;
 int intel_gvt_driver_remove (struct drm_i915_private*) ;
 int intel_modeset_driver_remove (TYPE_2__*) ;
 int intel_power_domains_driver_remove (struct drm_i915_private*) ;
 int synchronize_rcu () ;
 int vga_client_register (struct pci_dev*,int *,int *,int *) ;
 int vga_switcheroo_unregister_client (struct pci_dev*) ;

void i915_driver_remove(struct drm_i915_private *i915)
{
 struct pci_dev *pdev = i915->drm.pdev;

 disable_rpm_wakeref_asserts(&i915->runtime_pm);

 i915_driver_unregister(i915);






 intel_gt_set_wedged(&i915->gt);


 synchronize_rcu();

 i915_gem_suspend(i915);

 drm_atomic_helper_shutdown(&i915->drm);

 intel_gvt_driver_remove(i915);

 intel_modeset_driver_remove(&i915->drm);

 intel_bios_driver_remove(i915);

 vga_switcheroo_unregister_client(pdev);
 vga_client_register(pdev, ((void*)0), ((void*)0), ((void*)0));

 intel_csr_ucode_fini(i915);


 cancel_delayed_work_sync(&i915->gt.hangcheck.work);
 i915_reset_error_state(i915);

 i915_gem_driver_remove(i915);

 intel_power_domains_driver_remove(i915);

 i915_driver_hw_remove(i915);

 enable_rpm_wakeref_asserts(&i915->runtime_pm);
}
