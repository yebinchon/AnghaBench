
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;


 int DRV_NAME ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int dev_dbg (int *,char*,int ,int) ;
 int ioat_shutdown (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t ioat_pcie_error_detected(struct pci_dev *pdev,
       enum pci_channel_state error)
{
 dev_dbg(&pdev->dev, "%s: PCIe AER error %d\n", DRV_NAME, error);


 ioat_shutdown(pdev);

 return PCI_ERS_RESULT_NEED_RESET;
}
