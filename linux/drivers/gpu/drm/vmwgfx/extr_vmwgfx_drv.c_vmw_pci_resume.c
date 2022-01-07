
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_D0 ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static int vmw_pci_resume(struct pci_dev *pdev)
{
 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);
 return pci_enable_device(pdev);
}
