
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct hpt_info {scalar_t__ chip_type; } ;
struct TYPE_4__ {int irq; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dev_flags; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ HPT370 ;
 int IDE_DFLAG_NIEN_QUIRK ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct hpt_info* hpt3xx_get_info (int ) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void hpt3xx_maskproc(ide_drive_t *drive, int mask)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct hpt_info *info = hpt3xx_get_info(hwif->dev);

 if ((drive->dev_flags & IDE_DFLAG_NIEN_QUIRK) == 0)
  return;

 if (info->chip_type >= HPT370) {
  u8 scr1 = 0;

  pci_read_config_byte(dev, 0x5a, &scr1);
  if (((scr1 & 0x10) >> 4) != mask) {
   if (mask)
    scr1 |= 0x10;
   else
    scr1 &= ~0x10;
   pci_write_config_byte(dev, 0x5a, scr1);
  }
 } else if (mask)
  disable_irq(hwif->irq);
 else
  enable_irq(hwif->irq);
}
