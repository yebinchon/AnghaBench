
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ioatdma_device {int * dca; } ;


 int dev_err (int *,char*) ;
 int free_dca_provider (int *) ;
 int ioat_dma_remove (struct ioatdma_device*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct ioatdma_device* pci_get_drvdata (struct pci_dev*) ;
 int unregister_dca_provider (int *,int *) ;

__attribute__((used)) static void ioat_remove(struct pci_dev *pdev)
{
 struct ioatdma_device *device = pci_get_drvdata(pdev);

 if (!device)
  return;

 dev_err(&pdev->dev, "Removing dma and dca services\n");
 if (device->dca) {
  unregister_dca_provider(device->dca, &pdev->dev);
  free_dca_provider(device->dca);
  device->dca = ((void*)0);
 }

 pci_disable_pcie_error_reporting(pdev);
 ioat_dma_remove(device);
}
