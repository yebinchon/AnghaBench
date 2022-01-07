
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hfi1_devdata {int flags; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int HFI1_PRESENT ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dd_dev_info (struct hfi1_devdata*,char*,...) ;
 int hfi1_disable_after_error (struct hfi1_devdata*) ;



 int pci_disable_device (struct pci_dev*) ;
 struct hfi1_devdata* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t
pci_error_detected(struct pci_dev *pdev, pci_channel_state_t state)
{
 struct hfi1_devdata *dd = pci_get_drvdata(pdev);
 pci_ers_result_t ret = PCI_ERS_RESULT_RECOVERED;

 switch (state) {
 case 129:
  dd_dev_info(dd, "State Normal, ignoring\n");
  break;

 case 130:
  dd_dev_info(dd, "State Frozen, requesting reset\n");
  pci_disable_device(pdev);
  ret = PCI_ERS_RESULT_NEED_RESET;
  break;

 case 128:
  if (dd) {
   dd_dev_info(dd, "State Permanent Failure, disabling\n");

   dd->flags &= ~HFI1_PRESENT;
   hfi1_disable_after_error(dd);
  }

  ret = PCI_ERS_RESULT_DISCONNECT;
  break;

 default:
  dd_dev_info(dd, "HFI1 PCI errors detected (state %d)\n",
       state);
  break;
 }
 return ret;
}
