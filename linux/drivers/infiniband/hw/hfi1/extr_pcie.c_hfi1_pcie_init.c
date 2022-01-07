
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hfi1_devdata {struct pci_dev* pcidev; } ;


 int DMA_BIT_MASK (int) ;
 int DRIVER_NAME ;
 int dd_dev_err (struct hfi1_devdata*,char*,int) ;
 int hfi1_pcie_cleanup (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;

int hfi1_pcie_init(struct hfi1_devdata *dd)
{
 int ret;
 struct pci_dev *pdev = dd->pcidev;

 ret = pci_enable_device(pdev);
 if (ret) {
  dd_dev_err(dd, "pci enable failed: error %d\n", -ret);
  return ret;
 }

 ret = pci_request_regions(pdev, DRIVER_NAME);
 if (ret) {
  dd_dev_err(dd, "pci_request_regions fails: err %d\n", -ret);
  goto bail;
 }

 ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (ret) {





  ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (ret) {
   dd_dev_err(dd, "Unable to set DMA mask: %d\n", ret);
   goto bail;
  }
  ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
 } else {
  ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
 }
 if (ret) {
  dd_dev_err(dd, "Unable to set DMA consistent mask: %d\n", ret);
  goto bail;
 }

 pci_set_master(pdev);
 (void)pci_enable_pcie_error_reporting(pdev);
 return 0;

bail:
 hfi1_pcie_cleanup(pdev);
 return ret;
}
