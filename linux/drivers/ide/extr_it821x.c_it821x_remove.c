
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct it821x_dev {int dummy; } ;
struct ide_host {struct it821x_dev* host_priv; } ;


 int ide_pci_remove (struct pci_dev*) ;
 int kfree (struct it821x_dev*) ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void it821x_remove(struct pci_dev *dev)
{
 struct ide_host *host = pci_get_drvdata(dev);
 struct it821x_dev *itdevs = host->host_priv;

 ide_pci_remove(dev);
 kfree(itdevs);
}
