
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


 int const XFER_MW_DMA_0 ;
 int const XFER_PIO_0 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sis_ata100_program_timings(ide_drive_t *drive, const u8 mode)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 u8 t1, drive_pci = 0x40 + drive->dn * 2;


 const u8 pio_timings[] = { 0x00, 0x67, 0x44, 0x33, 0x31 };
 const u8 mwdma_timings[] = { 0x08, 0x32, 0x31 };

 if (mode >= XFER_MW_DMA_0) {
  u8 t2 = 0;

  pci_read_config_byte(dev, drive_pci, &t2);
  t2 &= ~0x80;
  pci_write_config_byte(dev, drive_pci, t2);

  t1 = mwdma_timings[mode - XFER_MW_DMA_0];
 } else
  t1 = pio_timings[mode - XFER_PIO_0];

 pci_write_config_byte(dev, drive_pci + 1, t1);
}
