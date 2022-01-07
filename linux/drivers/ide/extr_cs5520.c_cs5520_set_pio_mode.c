
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int dn; size_t pio_mode; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_8__ {int recovery; int assert; } ;


 size_t XFER_PIO_0 ;
 TYPE_5__* cs5520_pio_clocks ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cs5520_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 struct pci_dev *pdev = to_pci_dev(hwif->dev);
 int controller = drive->dn > 1 ? 1 : 0;
 const u8 pio = drive->pio_mode - XFER_PIO_0;


 pci_write_config_byte(pdev, 0x62 + controller,
  (cs5520_pio_clocks[pio].recovery << 4) |
  (cs5520_pio_clocks[pio].assert));





 pci_write_config_byte(pdev, 0x64 + 4*controller + (drive->dn&1),
  (cs5520_pio_clocks[pio].recovery << 4) |
  (cs5520_pio_clocks[pio].assert));

 pci_write_config_byte(pdev, 0x66 + 4*controller + (drive->dn&1),
  (cs5520_pio_clocks[pio].recovery << 4) |
  (cs5520_pio_clocks[pio].assert));
}
