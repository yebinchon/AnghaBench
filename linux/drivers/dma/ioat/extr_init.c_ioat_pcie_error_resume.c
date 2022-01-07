
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ioatdma_device {int dummy; } ;


 int DRV_NAME ;
 int dev_dbg (int *,char*,int ) ;
 int ioat_resume (struct ioatdma_device*) ;
 struct ioatdma_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void ioat_pcie_error_resume(struct pci_dev *pdev)
{
 struct ioatdma_device *ioat_dma = pci_get_drvdata(pdev);

 dev_dbg(&pdev->dev, "%s: AER handling resuming\n", DRV_NAME);


 ioat_resume(ioat_dma);
}
