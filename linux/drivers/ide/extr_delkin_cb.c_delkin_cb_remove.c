
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ide_host {int dummy; } ;


 int ide_host_remove (struct ide_host*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void
delkin_cb_remove (struct pci_dev *dev)
{
 struct ide_host *host = pci_get_drvdata(dev);

 ide_host_remove(host);

 pci_release_regions(dev);
 pci_disable_device(dev);
}
