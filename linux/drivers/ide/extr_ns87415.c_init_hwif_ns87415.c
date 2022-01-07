
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_8__ {scalar_t__ ctl_addr; } ;
struct TYPE_10__ {int channel; unsigned long select_data; scalar_t__ dma_base; int irq; TYPE_3__* tp_ops; TYPE_2__ io_ports; TYPE_1__* mate; int dev; } ;
typedef TYPE_4__ ide_hwif_t ;
struct TYPE_9__ {int (* read_status ) (TYPE_4__*) ;} ;
struct TYPE_7__ {unsigned long select_data; } ;


 int ATA_BUSY ;
 scalar_t__ ATA_DMA_STATUS ;
 int * ns87415_control ;
 int ns87415_count ;
 int outb (int,scalar_t__) ;
 int pci_get_legacy_ide_irq (struct pci_dev*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,unsigned int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,unsigned int) ;
 int stub1 (TYPE_4__*) ;
 struct pci_dev* to_pci_dev (int ) ;
 int udelay (int) ;

__attribute__((used)) static void init_hwif_ns87415 (ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 unsigned int ctrl, using_inta;
 u8 progif;
 (void) pci_read_config_dword(dev, 0x40, &ctrl);
 (void) pci_read_config_byte(dev, 0x09, &progif);

 using_inta = progif & (1 << (hwif->channel << 1));
 if (!using_inta)
  using_inta = ctrl & (1 << (4 + hwif->channel));
 if (hwif->mate) {
  hwif->select_data = hwif->mate->select_data;
 } else {
  hwif->select_data = (unsigned long)
     &ns87415_control[ns87415_count++];
  ctrl |= (1 << 8) | (1 << 9);
  if (using_inta)
   ctrl &= ~(1 << 6);
  *((unsigned int *)hwif->select_data) = ctrl;
  (void) pci_write_config_dword(dev, 0x40, ctrl);





  pci_write_config_byte(dev, 0x55, 0xee);
 }

 if (!using_inta)
  hwif->irq = pci_get_legacy_ide_irq(dev, hwif->channel);

 if (!hwif->dma_base)
  return;

 outb(0x60, hwif->dma_base + ATA_DMA_STATUS);
}
