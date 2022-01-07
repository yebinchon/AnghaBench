
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct gpu_i2c_dev {int adapter; int dev; } ;


 struct gpu_i2c_dev* dev_get_drvdata (int *) ;
 int i2c_del_adapter (int *) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pm_runtime_get_noresume (int ) ;

__attribute__((used)) static void gpu_i2c_remove(struct pci_dev *pdev)
{
 struct gpu_i2c_dev *i2cd = dev_get_drvdata(&pdev->dev);

 pm_runtime_get_noresume(i2cd->dev);
 i2c_del_adapter(&i2cd->adapter);
 pci_free_irq_vectors(pdev);
}
