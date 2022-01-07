
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int devfn; } ;
struct TYPE_3__ {int channel; struct TYPE_3__* mate; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int PCI_FUNC (int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void init_iops_cy82c693(ide_hwif_t *hwif)
{
 static ide_hwif_t *primary;
 struct pci_dev *dev = to_pci_dev(hwif->dev);

 if (PCI_FUNC(dev->devfn) == 1)
  primary = hwif;
 else {
  hwif->mate = primary;
  hwif->channel = 1;
 }
}
