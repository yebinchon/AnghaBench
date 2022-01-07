
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {scalar_t__ device; scalar_t__ revision; } ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ PCI_DEVICE_ID_SERVERWORKS_HT1000IDE ;
 scalar_t__ SVWKS_CSB5_REVISION_NEW ;
 scalar_t__ check_in_drive_lists (TYPE_2__*,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int svwks_bad_ata100 ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 svwks_udma_filter(ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);

 if (dev->device == PCI_DEVICE_ID_SERVERWORKS_HT1000IDE) {
  return 0x1f;
 } else if (dev->revision < SVWKS_CSB5_REVISION_NEW) {
  return 0x07;
 } else {
  u8 btr = 0, mode, mask;

  pci_read_config_byte(dev, 0x5A, &btr);
  mode = btr & 0x3;



  if (mode > 2 && check_in_drive_lists(drive, svwks_bad_ata100))
   mode = 2;

  switch(mode) {
  case 3: mask = 0x3f; break;
  case 2: mask = 0x1f; break;
  case 1: mask = 0x07; break;
  default: mask = 0x00; break;
  }

  return mask;
 }
}
