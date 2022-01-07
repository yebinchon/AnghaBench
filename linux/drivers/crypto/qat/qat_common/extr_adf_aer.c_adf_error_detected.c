
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct adf_accel_dev {int dummy; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 struct adf_accel_dev* adf_devmgr_pci_to_accel_dev (struct pci_dev*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 scalar_t__ pci_channel_io_perm_failure ;

__attribute__((used)) static pci_ers_result_t adf_error_detected(struct pci_dev *pdev,
        pci_channel_state_t state)
{
 struct adf_accel_dev *accel_dev = adf_devmgr_pci_to_accel_dev(pdev);

 dev_info(&pdev->dev, "Acceleration driver hardware error detected.\n");
 if (!accel_dev) {
  dev_err(&pdev->dev, "Can't find acceleration device\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 if (state == pci_channel_io_perm_failure) {
  dev_err(&pdev->dev, "Can't recover from device error\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 return PCI_ERS_RESULT_NEED_RESET;
}
