
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct it821x_dev {scalar_t__ clock_mode; } ;
struct TYPE_5__ {int channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ ATA_66 ;
 struct it821x_dev* ide_get_hwifdata (TYPE_1__*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void it821x_program(ide_drive_t *drive, u16 timing)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct it821x_dev *itdev = ide_get_hwifdata(hwif);
 int channel = hwif->channel;
 u8 conf;


 if(itdev->clock_mode == ATA_66)
  conf = timing >> 8;
 else
  conf = timing & 0xFF;

 pci_write_config_byte(dev, 0x54 + 4 * channel, conf);
}
