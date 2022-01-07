
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ class; } ;


 scalar_t__ PCI_CLASS_DISPLAY_VGA ;

__attribute__((used)) static bool is_vga(struct pci_dev *pdev)
{
 return pdev->class == PCI_CLASS_DISPLAY_VGA << 8;
}
