
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct efa_com_dev {int reg_bar; } ;
struct efa_dev {int ibdev; struct efa_com_dev edev; } ;


 int EFA_BASE_BAR_MASK ;
 int devm_iounmap (int *,int ) ;
 int efa_com_admin_destroy (struct efa_com_dev*) ;
 int efa_com_mmio_reg_read_destroy (struct efa_com_dev*) ;
 int efa_disable_msix (struct efa_dev*) ;
 int efa_free_mgmnt_irq (struct efa_dev*) ;
 int efa_release_bars (struct efa_dev*,int ) ;
 int ib_dealloc_device (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct efa_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void efa_remove_device(struct pci_dev *pdev)
{
 struct efa_dev *dev = pci_get_drvdata(pdev);
 struct efa_com_dev *edev;

 edev = &dev->edev;
 efa_com_admin_destroy(edev);
 efa_free_mgmnt_irq(dev);
 efa_disable_msix(dev);
 efa_com_mmio_reg_read_destroy(edev);
 devm_iounmap(&pdev->dev, edev->reg_bar);
 efa_release_bars(dev, EFA_BASE_BAR_MASK);
 ib_dealloc_device(&dev->ibdev);
 pci_disable_device(pdev);
}
