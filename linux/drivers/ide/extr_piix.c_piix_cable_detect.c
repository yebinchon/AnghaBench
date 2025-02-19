
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;
struct ich_laptop {scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
struct TYPE_3__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA40_SHORT ;
 int ATA_CBL_PATA80 ;
 struct ich_laptop* ich_laptop ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 piix_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *pdev = to_pci_dev(hwif->dev);
 const struct ich_laptop *lap = &ich_laptop[0];
 u8 reg54h = 0, mask = hwif->channel ? 0xc0 : 0x30;


 while (lap->device) {
  if (lap->device == pdev->device &&
      lap->subvendor == pdev->subsystem_vendor &&
      lap->subdevice == pdev->subsystem_device) {
   return ATA_CBL_PATA40_SHORT;
  }
  lap++;
 }

 pci_read_config_byte(pdev, 0x54, &reg54h);

 return (reg54h & mask) ? ATA_CBL_PATA80 : ATA_CBL_PATA40;
}
