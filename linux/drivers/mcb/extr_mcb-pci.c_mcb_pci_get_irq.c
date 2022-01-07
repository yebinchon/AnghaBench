
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct mcb_device {struct mcb_bus* bus; } ;
struct mcb_bus {struct device* carrier; } ;
struct device {int dummy; } ;


 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int mcb_pci_get_irq(struct mcb_device *mdev)
{
 struct mcb_bus *mbus = mdev->bus;
 struct device *dev = mbus->carrier;
 struct pci_dev *pdev = to_pci_dev(dev);

 return pdev->irq;
}
