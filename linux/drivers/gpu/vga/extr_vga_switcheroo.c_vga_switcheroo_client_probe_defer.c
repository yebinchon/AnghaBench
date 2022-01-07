
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int class; } ;
struct TYPE_2__ {int handler_flags; } ;


 int PCI_BASE_CLASS_DISPLAY ;
 scalar_t__ apple_gmux_present () ;
 struct pci_dev* vga_default_device () ;
 TYPE_1__ vgasr_priv ;

bool vga_switcheroo_client_probe_defer(struct pci_dev *pdev)
{
 if ((pdev->class >> 16) == PCI_BASE_CLASS_DISPLAY) {




  if (apple_gmux_present() && pdev != vga_default_device() &&
      !vgasr_priv.handler_flags)
   return 1;
 }

 return 0;
}
