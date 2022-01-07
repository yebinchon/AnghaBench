
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int devfn; int device; } ;
struct intel_device_info {scalar_t__ require_force_probe; } ;
struct TYPE_2__ {int force_probe; } ;


 int DRM_INFO (char*,int ,int ,int ) ;
 int ENODEV ;
 int ENOTTY ;
 int EPROBE_DEFER ;
 scalar_t__ PCI_FUNC (int ) ;
 int force_probe (int ,int ) ;
 int i915_driver_probe (struct pci_dev*,struct pci_device_id const*) ;
 scalar_t__ i915_inject_probe_failure (int ) ;
 int i915_live_selftests (struct pci_dev*) ;
 TYPE_1__ i915_modparams ;
 int i915_pci_remove (struct pci_dev*) ;
 int pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ vga_switcheroo_client_probe_defer (struct pci_dev*) ;

__attribute__((used)) static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct intel_device_info *intel_info =
  (struct intel_device_info *) ent->driver_data;
 int err;

 if (intel_info->require_force_probe &&
     !force_probe(pdev->device, i915_modparams.force_probe)) {
  DRM_INFO("Your graphics device %04x is not properly supported by the driver in this\n"
    "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
    "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
    "or (recommended) check for kernel updates.\n",
    pdev->device, pdev->device, pdev->device);
  return -ENODEV;
 }






 if (PCI_FUNC(pdev->devfn))
  return -ENODEV;





 if (vga_switcheroo_client_probe_defer(pdev))
  return -EPROBE_DEFER;

 err = i915_driver_probe(pdev, ent);
 if (err)
  return err;

 if (i915_inject_probe_failure(pci_get_drvdata(pdev))) {
  i915_pci_remove(pdev);
  return -ENODEV;
 }

 err = i915_live_selftests(pdev);
 if (err) {
  i915_pci_remove(pdev);
  return err > 0 ? -ENOTTY : err;
 }

 return 0;
}
