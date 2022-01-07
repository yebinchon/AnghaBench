
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int subsystem_device; int subsystem_vendor; int revision; int device; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_i915_error_state_buf {int dummy; } ;


 int err_printf (struct drm_i915_error_state_buf*,char*,int ,...) ;

__attribute__((used)) static void err_print_pciid(struct drm_i915_error_state_buf *m,
       struct drm_i915_private *i915)
{
 struct pci_dev *pdev = i915->drm.pdev;

 err_printf(m, "PCI ID: 0x%04x\n", pdev->device);
 err_printf(m, "PCI Revision: 0x%02x\n", pdev->revision);
 err_printf(m, "PCI Subsystem: %04x:%04x\n",
     pdev->subsystem_vendor,
     pdev->subsystem_device);
}
