
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_4__ {void* switch_power_state; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_5__ {int event; } ;
typedef TYPE_2__ pm_message_t ;
typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;


 void* DRM_SWITCH_POWER_CHANGING ;
 void* DRM_SWITCH_POWER_OFF ;
 void* DRM_SWITCH_POWER_ON ;
 int PCI_D0 ;
 int PM_EVENT_SUSPEND ;
 int VGA_SWITCHEROO_ON ;
 int dev_err (int *,char*) ;
 int i915_resume_switcheroo (struct drm_i915_private*) ;
 int i915_suspend_switcheroo (struct drm_i915_private*,TYPE_2__) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 struct drm_i915_private* pdev_to_i915 (struct pci_dev*) ;
 int pr_info (char*) ;

__attribute__((used)) static void i915_switcheroo_set_state(struct pci_dev *pdev, enum vga_switcheroo_state state)
{
 struct drm_i915_private *i915 = pdev_to_i915(pdev);
 pm_message_t pmm = { .event = PM_EVENT_SUSPEND };

 if (!i915) {
  dev_err(&pdev->dev, "DRM not initialized, aborting switch.\n");
  return;
 }

 if (state == VGA_SWITCHEROO_ON) {
  pr_info("switched on\n");
  i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;

  pci_set_power_state(pdev, PCI_D0);
  i915_resume_switcheroo(i915);
  i915->drm.switch_power_state = DRM_SWITCH_POWER_ON;
 } else {
  pr_info("switched off\n");
  i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
  i915_suspend_switcheroo(i915, pmm);
  i915->drm.switch_power_state = DRM_SWITCH_POWER_OFF;
 }
}
