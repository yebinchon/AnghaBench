
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;


 int DRV_NAME ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ pci_enable_device_mem (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;

__attribute__((used)) static pci_ers_result_t ioat_pcie_error_slot_reset(struct pci_dev *pdev)
{
 pci_ers_result_t result = PCI_ERS_RESULT_RECOVERED;

 dev_dbg(&pdev->dev, "%s post reset handling\n", DRV_NAME);

 if (pci_enable_device_mem(pdev) < 0) {
  dev_err(&pdev->dev,
   "Failed to enable PCIe device after reset.\n");
  result = PCI_ERS_RESULT_DISCONNECT;
 } else {
  pci_set_master(pdev);
  pci_restore_state(pdev);
  pci_save_state(pdev);
  pci_wake_from_d3(pdev, 0);
 }

 return result;
}
