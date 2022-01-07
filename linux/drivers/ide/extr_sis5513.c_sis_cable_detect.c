
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sis_laptop {scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
struct pci_dev {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;
struct TYPE_3__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 scalar_t__ ATA_133 ;
 scalar_t__ ATA_66 ;
 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA40_SHORT ;
 int ATA_CBL_PATA80 ;
 scalar_t__ chipset_family ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 struct sis_laptop* sis_laptop ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 sis_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *pdev = to_pci_dev(hwif->dev);
 const struct sis_laptop *lap = &sis_laptop[0];
 u8 ata66 = 0;

 while (lap->device) {
  if (lap->device == pdev->device &&
      lap->subvendor == pdev->subsystem_vendor &&
      lap->subdevice == pdev->subsystem_device)
   return ATA_CBL_PATA40_SHORT;
  lap++;
 }

 if (chipset_family >= ATA_133) {
  u16 regw = 0;
  u16 reg_addr = hwif->channel ? 0x52: 0x50;
  pci_read_config_word(pdev, reg_addr, &regw);
  ata66 = (regw & 0x8000) ? 0 : 1;
 } else if (chipset_family >= ATA_66) {
  u8 reg48h = 0;
  u8 mask = hwif->channel ? 0x20 : 0x10;
  pci_read_config_byte(pdev, 0x48, &reg48h);
  ata66 = (reg48h & mask) ? 0 : 1;
 }

 return ata66 ? ATA_CBL_PATA80 : ATA_CBL_PATA40;
}
