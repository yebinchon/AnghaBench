
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_8__ {int dn; size_t pio_mode; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_9__ {int reg13; int reg0d; int reg0c; } ;


 size_t XFER_PIO_0 ;
 int max_dma_rate (struct pci_dev*) ;
 TYPE_4__* pio_timings ;
 int set_indexed_reg (TYPE_1__*,size_t,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void pdcnew_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u8 adj = (drive->dn & 1) ? 0x08 : 0x00;
 const u8 pio = drive->pio_mode - XFER_PIO_0;

 if (max_dma_rate(dev) == 4) {
  set_indexed_reg(hwif, 0x0c + adj, pio_timings[pio].reg0c);
  set_indexed_reg(hwif, 0x0d + adj, pio_timings[pio].reg0d);
  set_indexed_reg(hwif, 0x13 + adj, pio_timings[pio].reg13);
 }
}
