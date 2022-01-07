
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int ich7_lpc_cleanup (int *) ;
 int pci_disable_device (struct pci_dev*) ;

__attribute__((used)) static void ich7_lpc_remove(struct pci_dev *dev)
{
 ich7_lpc_cleanup(&dev->dev);
 pci_disable_device(dev);
}
