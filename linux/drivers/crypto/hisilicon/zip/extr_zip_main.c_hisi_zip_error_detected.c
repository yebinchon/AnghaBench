
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; scalar_t__ is_virtfn; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NONE ;
 int dev_info (int *,char*,scalar_t__) ;
 int hisi_zip_process_hw_error (struct pci_dev*) ;
 scalar_t__ pci_channel_io_perm_failure ;

__attribute__((used)) static pci_ers_result_t hisi_zip_error_detected(struct pci_dev *pdev,
      pci_channel_state_t state)
{
 if (pdev->is_virtfn)
  return PCI_ERS_RESULT_NONE;

 dev_info(&pdev->dev, "PCI error detected, state(=%d)!!\n", state);
 if (state == pci_channel_io_perm_failure)
  return PCI_ERS_RESULT_DISCONNECT;

 return hisi_zip_process_hw_error(pdev);
}
