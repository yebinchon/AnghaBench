
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int device; } ;
struct TYPE_3__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int BMIDECSR ;


 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 cmd64x_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u8 bmidecsr = 0, mask = hwif->channel ? 0x02 : 0x01;

 switch (dev->device) {
 case 129:
 case 128:
   pci_read_config_byte(dev, BMIDECSR, &bmidecsr);
  return (bmidecsr & mask) ? ATA_CBL_PATA80 : ATA_CBL_PATA40;
 default:
  return ATA_CBL_PATA40;
 }
}
