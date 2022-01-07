
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dn; } ;
typedef TYPE_2__ ide_drive_t ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ali_fifo_control(ide_hwif_t *hwif, ide_drive_t *drive, int on)
{
 struct pci_dev *pdev = to_pci_dev(hwif->dev);
 int pio_fifo = 0x54 + hwif->channel;
 u8 fifo;
 int shift = 4 * (drive->dn & 1);

 pci_read_config_byte(pdev, pio_fifo, &fifo);
 fifo &= ~(0x0F << shift);
 fifo |= (on << shift);
 pci_write_config_byte(pdev, pio_fifo, fifo);
}
