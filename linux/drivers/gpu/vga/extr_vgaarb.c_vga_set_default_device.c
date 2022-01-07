
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 struct pci_dev* pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* vga_default ;

void vga_set_default_device(struct pci_dev *pdev)
{
 if (vga_default == pdev)
  return;

 pci_dev_put(vga_default);
 vga_default = pci_dev_get(pdev);
}
