
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dn; int dma_mode; } ;
typedef TYPE_2__ ide_drive_t ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void triflex_set_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u32 triflex_timings = 0;
 u16 timing = 0;
 u8 channel_offset = hwif->channel ? 0x74 : 0x70, unit = drive->dn & 1;

 pci_read_config_dword(dev, channel_offset, &triflex_timings);

 switch (drive->dma_mode) {
  case 136:
   timing = 0x0103;
   break;
  case 137:
   timing = 0x0203;
   break;
  case 138:
   timing = 0x0808;
   break;
  case 128:
  case 129:
  case 130:
   timing = 0x0f0f;
   break;
  case 131:
   timing = 0x0202;
   break;
  case 132:
   timing = 0x0204;
   break;
  case 133:
   timing = 0x0404;
   break;
  case 134:
   timing = 0x0508;
   break;
  case 135:
   timing = 0x0808;
   break;
 }

 triflex_timings &= ~(0xFFFF << (16 * unit));
 triflex_timings |= (timing << (16 * unit));

 pci_write_config_dword(dev, channel_offset, triflex_timings);
}
