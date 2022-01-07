
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 unsigned long siimage_selreg (TYPE_1__*,int ) ;
 int sil_ioread8 (struct pci_dev*,unsigned long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 sil_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 unsigned long addr = siimage_selreg(hwif, 0);
 u8 ata66 = sil_ioread8(dev, addr);

 return (ata66 & 0x01) ? ATA_CBL_PATA80 : ATA_CBL_PATA40;
}
