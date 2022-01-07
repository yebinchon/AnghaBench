
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct adf_accel_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int ADF_DEV_RESET_SYNC ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ adf_dev_aer_schedule_reset (struct adf_accel_dev*,int ) ;
 struct adf_accel_dev* adf_devmgr_pci_to_accel_dev (struct pci_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static pci_ers_result_t adf_slot_reset(struct pci_dev *pdev)
{
 struct adf_accel_dev *accel_dev = adf_devmgr_pci_to_accel_dev(pdev);

 if (!accel_dev) {
  pr_err("QAT: Can't find acceleration device\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 if (adf_dev_aer_schedule_reset(accel_dev, ADF_DEV_RESET_SYNC))
  return PCI_ERS_RESULT_DISCONNECT;

 return PCI_ERS_RESULT_RECOVERED;
}
