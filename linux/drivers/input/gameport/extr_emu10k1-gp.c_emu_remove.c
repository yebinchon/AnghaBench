
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct emu {int size; int io; int gameport; } ;


 int gameport_unregister_port (int ) ;
 int kfree (struct emu*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct emu* pci_get_drvdata (struct pci_dev*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void emu_remove(struct pci_dev *pdev)
{
 struct emu *emu = pci_get_drvdata(pdev);

 gameport_unregister_port(emu->gameport);
 release_region(emu->io, emu->size);
 kfree(emu);

 pci_disable_device(pdev);
}
