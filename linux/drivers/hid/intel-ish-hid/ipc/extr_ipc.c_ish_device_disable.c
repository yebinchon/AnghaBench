
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ishtp_device {int dev_state; struct pci_dev* pdev; } ;


 int ISHTP_DEV_DISABLED ;
 int PCI_D3hot ;
 int dev_err (int *,char*) ;
 int ish_clr_host_rdy (struct ishtp_device*) ;
 scalar_t__ ish_disable_dma (struct ishtp_device*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

void ish_device_disable(struct ishtp_device *dev)
{
 struct pci_dev *pdev = dev->pdev;

 if (!pdev)
  return;


 if (ish_disable_dma(dev)) {
  dev_err(&pdev->dev,
   "Can't reset - stuck with DMA in-progress\n");
  return;
 }


 pci_set_power_state(pdev, PCI_D3hot);

 dev->dev_state = ISHTP_DEV_DISABLED;
 ish_clr_host_rdy(dev);
}
