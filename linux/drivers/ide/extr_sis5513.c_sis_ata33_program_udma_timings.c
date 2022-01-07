
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int dev; } ;


 int const XFER_UDMA_0 ;
 int chipset_family ;
 int* cycle_time_offset ;
 int* cycle_time_range ;
 int** cycle_time_value ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sis_ata33_program_udma_timings(ide_drive_t *drive, const u8 mode)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 u8 drive_pci = 0x40 + drive->dn * 2, reg = 0, i = chipset_family;

 pci_read_config_byte(dev, drive_pci + 1, &reg);


 reg |= 0x80;

 reg &= ~((0xff >> (8 - cycle_time_range[i])) << cycle_time_offset[i]);

 reg |= cycle_time_value[i][mode - XFER_UDMA_0] << cycle_time_offset[i];

 pci_write_config_byte(dev, drive_pci + 1, reg);
}
