
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int QIB_DRV_NAME ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int qib_devinfo (struct pci_dev*,char*,int) ;
 int qib_early_err (int *,char*,int) ;

int qib_pcie_init(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int ret;

 ret = pci_enable_device(pdev);
 if (ret) {
  qib_early_err(&pdev->dev, "pci enable failed: error %d\n",
         -ret);
  goto done;
 }

 ret = pci_request_regions(pdev, QIB_DRV_NAME);
 if (ret) {
  qib_devinfo(pdev, "pci_request_regions fails: err %d\n", -ret);
  goto bail;
 }

 ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (ret) {





  ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (ret) {
   qib_devinfo(pdev, "Unable to set DMA mask: %d\n", ret);
   goto bail;
  }
  ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
 } else
  ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
 if (ret) {
  qib_early_err(&pdev->dev,
         "Unable to set DMA consistent mask: %d\n", ret);
  goto bail;
 }

 pci_set_master(pdev);
 ret = pci_enable_pcie_error_reporting(pdev);
 if (ret) {
  qib_early_err(&pdev->dev,
         "Unable to enable pcie error reporting: %d\n",
         ret);
  ret = 0;
 }
 goto done;

bail:
 pci_disable_device(pdev);
 pci_release_regions(pdev);
done:
 return ret;
}
