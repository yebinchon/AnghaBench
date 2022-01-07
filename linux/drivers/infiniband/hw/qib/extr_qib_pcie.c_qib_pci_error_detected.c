
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int flags; } ;
struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 int QIB_PRESENT ;



 int pci_disable_device (struct pci_dev*) ;
 struct qib_devdata* pci_get_drvdata (struct pci_dev*) ;
 int qib_devinfo (struct pci_dev*,char*,...) ;
 int qib_disable_after_error (struct qib_devdata*) ;

__attribute__((used)) static pci_ers_result_t
qib_pci_error_detected(struct pci_dev *pdev, pci_channel_state_t state)
{
 struct qib_devdata *dd = pci_get_drvdata(pdev);
 pci_ers_result_t ret = PCI_ERS_RESULT_RECOVERED;

 switch (state) {
 case 129:
  qib_devinfo(pdev, "State Normal, ignoring\n");
  break;

 case 130:
  qib_devinfo(pdev, "State Frozen, requesting reset\n");
  pci_disable_device(pdev);
  ret = PCI_ERS_RESULT_NEED_RESET;
  break;

 case 128:
  qib_devinfo(pdev, "State Permanent Failure, disabling\n");
  if (dd) {

   dd->flags &= ~QIB_PRESENT;
   qib_disable_after_error(dd);
  }

  ret = PCI_ERS_RESULT_DISCONNECT;
  break;

 default:
  qib_devinfo(pdev, "QIB PCI errors detected (state %d)\n",
   state);
  break;
 }
 return ret;
}
