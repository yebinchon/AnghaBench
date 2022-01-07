
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ide_timing {int recover; int active; int setup; } ;
struct TYPE_7__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_8__ {size_t dn; int pio_mode; int dma_mode; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;





 int ARTTIM23_INTR_CH1 ;




 int IDE_TIMING_SETUP ;
 TYPE_2__* ide_get_pair_dev (TYPE_2__*) ;
 int ide_pci_clk ;
 int ide_timing_compute (TYPE_2__*,int,struct ide_timing*,unsigned long const,int ) ;
 int ide_timing_merge (struct ide_timing*,struct ide_timing*,struct ide_timing*,int ) ;
 int pci_read_config_byte (struct pci_dev*,int const,int*) ;
 int pci_write_config_byte (struct pci_dev*,int const,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cmd64x_program_timings(ide_drive_t *drive, u8 mode)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 int bus_speed = ide_pci_clk ? ide_pci_clk : 33;
 const unsigned long T = 1000000 / bus_speed;
 static const u8 recovery_values[] =
  {15, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 0};
 static const u8 setup_values[] = {0x40, 0x40, 0x40, 0x80, 0, 0xc0};
 static const u8 arttim_regs[4] = {134, 133, 132, 132};
 static const u8 drwtim_regs[4] = {131, 130, 129, 128};
 struct ide_timing t;
 u8 arttim = 0;

 ide_timing_compute(drive, mode, &t, T, 0);





 if (t.recover > 16) {
  t.active += t.recover - 16;
  t.recover = 16;
 }
 if (t.active > 16)
  t.active = 16;




 t.recover = recovery_values[t.recover];
 t.active &= 0x0f;


 pci_write_config_byte(dev, drwtim_regs[drive->dn],
         (t.active << 4) | t.recover);







 if (hwif->channel) {
  ide_drive_t *pair = ide_get_pair_dev(drive);

  if (pair) {
   struct ide_timing tp;

   ide_timing_compute(pair, pair->pio_mode, &tp, T, 0);
   ide_timing_merge(&t, &tp, &t, IDE_TIMING_SETUP);
   if (pair->dma_mode) {
    ide_timing_compute(pair, pair->dma_mode,
      &tp, T, 0);
    ide_timing_merge(&tp, &t, &t, IDE_TIMING_SETUP);
   }
  }
 }

 if (t.setup > 5)
  t.setup = 5;





 (void) pci_read_config_byte (dev, arttim_regs[drive->dn], &arttim);
 if (hwif->channel)
  arttim &= ~ARTTIM23_INTR_CH1;
 arttim &= ~0xc0;
 arttim |= setup_values[t.setup];
 (void) pci_write_config_byte(dev, arttim_regs[drive->dn], arttim);
}
