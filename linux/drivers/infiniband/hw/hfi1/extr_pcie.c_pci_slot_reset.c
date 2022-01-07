
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hfi1_devdata {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 struct hfi1_devdata* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t
pci_slot_reset(struct pci_dev *pdev)
{
 struct hfi1_devdata *dd = pci_get_drvdata(pdev);

 dd_dev_info(dd, "HFI1 slot_reset function called, ignored\n");
 return PCI_ERS_RESULT_CAN_RECOVER;
}
