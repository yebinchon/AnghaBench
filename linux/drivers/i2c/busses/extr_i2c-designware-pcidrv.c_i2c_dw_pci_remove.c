
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct dw_i2c_dev {int adapter; int (* disable ) (struct dw_i2c_dev*) ;} ;


 int i2c_del_adapter (int *) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 struct dw_i2c_dev* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int stub1 (struct dw_i2c_dev*) ;

__attribute__((used)) static void i2c_dw_pci_remove(struct pci_dev *pdev)
{
 struct dw_i2c_dev *dev = pci_get_drvdata(pdev);

 dev->disable(dev);
 pm_runtime_forbid(&pdev->dev);
 pm_runtime_get_noresume(&pdev->dev);

 i2c_del_adapter(&dev->adapter);
 pci_free_irq_vectors(pdev);
}
