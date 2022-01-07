
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct efa_com_dev {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int EFA_REGS_RESET_NORMAL ;
 int dev_err (int *,char*,int) ;
 int efa_com_dev_reset (struct efa_com_dev*,int ) ;
 int efa_com_get_dma_width (struct efa_com_dev*) ;
 int efa_com_validate_version (struct efa_com_dev*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int efa_device_init(struct efa_com_dev *edev, struct pci_dev *pdev)
{
 int dma_width;
 int err;

 err = efa_com_dev_reset(edev, EFA_REGS_RESET_NORMAL);
 if (err)
  return err;

 err = efa_com_validate_version(edev);
 if (err)
  return err;

 dma_width = efa_com_get_dma_width(edev);
 if (dma_width < 0) {
  err = dma_width;
  return err;
 }

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(dma_width));
 if (err) {
  dev_err(&pdev->dev, "pci_set_dma_mask failed %d\n", err);
  return err;
 }

 err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(dma_width));
 if (err) {
  dev_err(&pdev->dev,
   "err_pci_set_consistent_dma_mask failed %d\n",
   err);
  return err;
 }

 return 0;
}
