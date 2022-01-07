
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct via82cxxx_dev {TYPE_1__* via_config; } ;
struct pci_dev {int dummy; } ;
struct ide_timing {scalar_t__ udma; scalar_t__ recover; scalar_t__ active; scalar_t__ rec8b; scalar_t__ act8b; scalar_t__ setup; } ;
struct ide_host {struct via82cxxx_dev* host_priv; } ;
struct TYPE_5__ {int dev; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_4__ {int flags; int udma_mask; } ;






 int VIA_8BIT_TIMING ;
 int VIA_ADDRESS_SETUP ;
 int VIA_BAD_AST ;
 int VIA_DRIVE_TIMING ;
 int VIA_UDMA_TIMING ;
 int clamp_val (scalar_t__,int,int) ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void via_set_speed(ide_hwif_t *hwif, u8 dn, struct ide_timing *timing)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct ide_host *host = pci_get_drvdata(dev);
 struct via82cxxx_dev *vdev = host->host_priv;
 u8 t;

 if (~vdev->via_config->flags & VIA_BAD_AST) {
  pci_read_config_byte(dev, VIA_ADDRESS_SETUP, &t);
  t = (t & ~(3 << ((3 - dn) << 1))) | ((clamp_val(timing->setup, 1, 4) - 1) << ((3 - dn) << 1));
  pci_write_config_byte(dev, VIA_ADDRESS_SETUP, t);
 }

 pci_write_config_byte(dev, VIA_8BIT_TIMING + (1 - (dn >> 1)),
  ((clamp_val(timing->act8b, 1, 16) - 1) << 4) | (clamp_val(timing->rec8b, 1, 16) - 1));

 pci_write_config_byte(dev, VIA_DRIVE_TIMING + (3 - dn),
  ((clamp_val(timing->active, 1, 16) - 1) << 4) | (clamp_val(timing->recover, 1, 16) - 1));

 switch (vdev->via_config->udma_mask) {
 case 131: t = timing->udma ? (0xe0 | (clamp_val(timing->udma, 2, 5) - 2)) : 0x03; break;
 case 130: t = timing->udma ? (0xe8 | (clamp_val(timing->udma, 2, 9) - 2)) : 0x0f; break;
 case 129: t = timing->udma ? (0xe0 | (clamp_val(timing->udma, 2, 9) - 2)) : 0x07; break;
 case 128: t = timing->udma ? (0xe0 | (clamp_val(timing->udma, 2, 9) - 2)) : 0x07; break;
 }


 if (vdev->via_config->udma_mask) {
  u8 udma_etc;

  pci_read_config_byte(dev, VIA_UDMA_TIMING + 3 - dn, &udma_etc);


  udma_etc &= ~0x20;

  if (timing->udma) {

   udma_etc &= 0x10;
   udma_etc |= t;
  }

  pci_write_config_byte(dev, VIA_UDMA_TIMING + 3 - dn, udma_etc);
 }
}
