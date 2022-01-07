
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int ATIIXP_IDE_UDMA_MODE ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 atiixp_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *pdev = to_pci_dev(hwif->dev);
 u8 udma_mode = 0, ch = hwif->channel;

 pci_read_config_byte(pdev, ATIIXP_IDE_UDMA_MODE + ch, &udma_mode);

 if ((udma_mode & 0x07) >= 0x04 || (udma_mode & 0x70) >= 0x40)
  return ATA_CBL_PATA80;
 else
  return ATA_CBL_PATA40;
}
