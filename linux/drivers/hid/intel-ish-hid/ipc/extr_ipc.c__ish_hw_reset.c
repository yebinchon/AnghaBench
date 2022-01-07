
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_dev {scalar_t__ pm_cap; int d3_delay; int dev; } ;
struct ishtp_device {int dev_state; struct pci_dev* pdev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ISHTP_DEV_RESETTING ;
 int PCI_D0 ;
 int PCI_D3hot ;
 scalar_t__ PCI_PM_CTRL ;
 int PCI_PM_CTRL_STATE_MASK ;
 int dev_err (int *,char*) ;
 scalar_t__ ish_disable_dma (struct ishtp_device*) ;
 int ish_wakeup (struct ishtp_device*) ;
 int mdelay (int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_reset_function (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static int _ish_hw_reset(struct ishtp_device *dev)
{
 struct pci_dev *pdev = dev->pdev;
 int rv;
 uint16_t csr;

 if (!pdev)
  return -ENODEV;

 rv = pci_reset_function(pdev);
 if (!rv)
  dev->dev_state = ISHTP_DEV_RESETTING;

 if (!pdev->pm_cap) {
  dev_err(&pdev->dev, "Can't reset - no PM caps\n");
  return -EINVAL;
 }


 if (ish_disable_dma(dev)) {
  dev_err(&pdev->dev,
   "Can't reset - stuck with DMA in-progress\n");
  return -EBUSY;
 }

 pci_read_config_word(pdev, pdev->pm_cap + PCI_PM_CTRL, &csr);

 csr &= ~PCI_PM_CTRL_STATE_MASK;
 csr |= PCI_D3hot;
 pci_write_config_word(pdev, pdev->pm_cap + PCI_PM_CTRL, csr);

 mdelay(pdev->d3_delay);

 csr &= ~PCI_PM_CTRL_STATE_MASK;
 csr |= PCI_D0;
 pci_write_config_word(pdev, pdev->pm_cap + PCI_PM_CTRL, csr);


 ish_wakeup(dev);

 return 0;
}
