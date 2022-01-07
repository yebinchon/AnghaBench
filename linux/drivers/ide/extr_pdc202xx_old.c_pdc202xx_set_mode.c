
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int dn; int dma_mode; scalar_t__ media; } ;
typedef TYPE_2__ ide_drive_t ;
 int const XFER_SW_DMA_0 ;






 scalar_t__ ide_disk ;
 scalar_t__ ide_pio_need_iordy (TYPE_2__*,int const) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void pdc202xx_set_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u8 drive_pci = 0x60 + (drive->dn << 2);
 const u8 speed = drive->dma_mode;

 u8 AP = 0, BP = 0, CP = 0;
 u8 TA = 0, TB = 0, TC = 0;

 pci_read_config_byte(dev, drive_pci, &AP);
 pci_read_config_byte(dev, drive_pci + 1, &BP);
 pci_read_config_byte(dev, drive_pci + 2, &CP);

 switch(speed) {
  case 128:
  case 129: TB = 0x20; TC = 0x01; break;
  case 131: TB = 0x20; TC = 0x01; break;
  case 130:
  case 132: TB = 0x40; TC = 0x02; break;
  case 133:
  case 139: TB = 0x60; TC = 0x03; break;
  case 140: TB = 0x60; TC = 0x04; break;
  case 141: TB = 0xE0; TC = 0x0F; break;
  case 134: TA = 0x01; TB = 0x04; break;
  case 135: TA = 0x02; TB = 0x06; break;
  case 136: TA = 0x03; TB = 0x08; break;
  case 137: TA = 0x05; TB = 0x0C; break;
  case 138:
  default: TA = 0x09; TB = 0x13; break;
 }

 if (speed < XFER_SW_DMA_0) {




  AP &= ~0x3f;
  if (ide_pio_need_iordy(drive, speed - 138))
   AP |= 0x20;
  if (drive->media == ide_disk)
   AP |= 0x10;

  BP &= ~0x1f;
  pci_write_config_byte(dev, drive_pci, AP | TA);
  pci_write_config_byte(dev, drive_pci + 1, BP | TB);
 } else {

  BP &= ~0xe0;

  CP &= ~0x0f;
  pci_write_config_byte(dev, drive_pci + 1, BP | TB);
  pci_write_config_byte(dev, drive_pci + 2, CP | TC);
 }
}
