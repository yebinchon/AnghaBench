
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcips2_data {int io; } ;
struct pci_dev {int dummy; } ;


 int kfree (struct pcips2_data*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pcips2_data* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static void pcips2_remove(struct pci_dev *dev)
{
 struct pcips2_data *ps2if = pci_get_drvdata(dev);

 serio_unregister_port(ps2if->io);
 kfree(ps2if);
 pci_release_regions(dev);
 pci_disable_device(dev);
}
