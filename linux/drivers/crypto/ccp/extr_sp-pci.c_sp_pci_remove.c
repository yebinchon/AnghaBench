
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;


 struct sp_device* dev_get_drvdata (struct device*) ;
 int sp_destroy (struct sp_device*) ;
 int sp_free_irqs (struct sp_device*) ;

__attribute__((used)) static void sp_pci_remove(struct pci_dev *pdev)
{
 struct device *dev = &pdev->dev;
 struct sp_device *sp = dev_get_drvdata(dev);

 if (!sp)
  return;

 sp_destroy(sp);

 sp_free_irqs(sp);
}
