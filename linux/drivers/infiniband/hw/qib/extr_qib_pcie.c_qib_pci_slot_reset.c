
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int qib_devinfo (struct pci_dev*,char*) ;

__attribute__((used)) static pci_ers_result_t
qib_pci_slot_reset(struct pci_dev *pdev)
{
 qib_devinfo(pdev, "QIB slot_reset function called, ignored\n");
 return PCI_ERS_RESULT_CAN_RECOVER;
}
