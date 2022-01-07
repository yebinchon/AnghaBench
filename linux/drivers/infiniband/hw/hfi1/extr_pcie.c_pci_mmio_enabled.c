
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct pci_dev {int dummy; } ;
struct hfi1_devdata {scalar_t__ pport; } ;
typedef int pci_ers_result_t ;


 int CNTR_INVALID_VL ;
 int C_RX_WORDS ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 int dd_dev_info (struct hfi1_devdata*,char*,unsigned long long,int ) ;
 struct hfi1_devdata* pci_get_drvdata (struct pci_dev*) ;
 unsigned long long read_port_cntr (scalar_t__,int ,int ) ;

__attribute__((used)) static pci_ers_result_t
pci_mmio_enabled(struct pci_dev *pdev)
{
 u64 words = 0U;
 struct hfi1_devdata *dd = pci_get_drvdata(pdev);
 pci_ers_result_t ret = PCI_ERS_RESULT_RECOVERED;

 if (dd && dd->pport) {
  words = read_port_cntr(dd->pport, C_RX_WORDS, CNTR_INVALID_VL);
  if (words == ~0ULL)
   ret = PCI_ERS_RESULT_NEED_RESET;
  dd_dev_info(dd,
       "HFI1 mmio_enabled function called, read wordscntr %llx, returning %d\n",
       words, ret);
 }
 return ret;
}
