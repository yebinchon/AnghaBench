
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int dn; int pio_mode; scalar_t__ media; } ;
typedef TYPE_2__ ide_drive_t ;


 int XFER_PIO_0 ;
 scalar_t__ ide_disk ;
 scalar_t__ ide_pio_need_iordy (TYPE_2__*,int const) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 int slc90e66_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void slc90e66_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 int is_slave = drive->dn & 1;
 int master_port = hwif->channel ? 0x42 : 0x40;
 int slave_port = 0x44;
 unsigned long flags;
 u16 master_data;
 u8 slave_data;
 int control = 0;
 const u8 pio = drive->pio_mode - XFER_PIO_0;


 static const u8 timings[][2] = {
     { 0, 0 },
     { 0, 0 },
     { 1, 0 },
     { 2, 1 },
     { 2, 3 }, };

 spin_lock_irqsave(&slc90e66_lock, flags);
 pci_read_config_word(dev, master_port, &master_data);

 if (pio > 1)
  control |= 1;
 if (drive->media == ide_disk)
  control |= 4;
 if (ide_pio_need_iordy(drive, pio))
  control |= 2;
 if (is_slave) {
  master_data |= 0x4000;
  master_data &= ~0x0070;
  if (pio > 1) {

   master_data |= control << 4;
  }
  pci_read_config_byte(dev, slave_port, &slave_data);
  slave_data &= hwif->channel ? 0x0f : 0xf0;
  slave_data |= ((timings[pio][0] << 2) | timings[pio][1]) <<
          (hwif->channel ? 4 : 0);
 } else {
  master_data &= ~0x3307;
  if (pio > 1) {

   master_data |= control;
  }
  master_data |= (timings[pio][0] << 12) | (timings[pio][1] << 8);
 }
 pci_write_config_word(dev, master_port, master_data);
 if (is_slave)
  pci_write_config_byte(dev, slave_port, slave_data);
 spin_unlock_irqrestore(&slc90e66_lock, flags);
}
