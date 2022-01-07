
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ide_host {scalar_t__* dev; } ;


 int ide_pci_remove (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (scalar_t__) ;

__attribute__((used)) static void cy82c693_remove(struct pci_dev *dev)
{
 struct ide_host *host = pci_get_drvdata(dev);
 struct pci_dev *dev2 = host->dev[1] ? to_pci_dev(host->dev[1]) : ((void*)0);

 ide_pci_remove(dev);
 pci_dev_put(dev2);
}
