
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct hisi_zip {int qm; } ;
typedef scalar_t__ pci_ers_result_t ;


 scalar_t__ PCI_ERS_RESULT_NEED_RESET ;
 scalar_t__ PCI_ERS_RESULT_NONE ;
 scalar_t__ PCI_ERS_RESULT_RECOVERED ;
 int dev_err (struct device*,char*) ;
 scalar_t__ hisi_qm_hw_error_handle (int *) ;
 scalar_t__ hisi_zip_hw_error_handle (struct hisi_zip*) ;
 struct hisi_zip* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t hisi_zip_process_hw_error(struct pci_dev *pdev)
{
 struct hisi_zip *hisi_zip = pci_get_drvdata(pdev);
 struct device *dev = &pdev->dev;
 pci_ers_result_t qm_ret, zip_ret;

 if (!hisi_zip) {
  dev_err(dev,
   "Can't recover ZIP-error occurred during device init\n");
  return PCI_ERS_RESULT_NONE;
 }

 qm_ret = hisi_qm_hw_error_handle(&hisi_zip->qm);

 zip_ret = hisi_zip_hw_error_handle(hisi_zip);

 return (qm_ret == PCI_ERS_RESULT_NEED_RESET ||
  zip_ret == PCI_ERS_RESULT_NEED_RESET) ?
        PCI_ERS_RESULT_NEED_RESET : PCI_ERS_RESULT_RECOVERED;
}
