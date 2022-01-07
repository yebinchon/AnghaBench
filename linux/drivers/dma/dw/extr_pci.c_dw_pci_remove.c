
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct dw_dma_chip_pdata {int (* remove ) (struct dw_dma_chip*) ;struct dw_dma_chip* chip; } ;
struct dw_dma_chip {int dummy; } ;


 int dev_warn (int *,char*,int) ;
 struct dw_dma_chip_pdata* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct dw_dma_chip*) ;

__attribute__((used)) static void dw_pci_remove(struct pci_dev *pdev)
{
 struct dw_dma_chip_pdata *data = pci_get_drvdata(pdev);
 struct dw_dma_chip *chip = data->chip;
 int ret;

 ret = data->remove(chip);
 if (ret)
  dev_warn(&pdev->dev, "can't remove device properly: %d\n", ret);
}
