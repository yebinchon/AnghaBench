
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {int irq; } ;
struct ide_io_ports {unsigned long data_addr; unsigned long error_addr; unsigned long nsect_addr; unsigned long lbal_addr; unsigned long lbam_addr; unsigned long lbah_addr; unsigned long device_addr; unsigned long status_addr; unsigned long ctl_addr; } ;
struct ide_host {void* host_priv; } ;
struct TYPE_3__ {unsigned long* sata_scr; unsigned long dma_base; int irq; void* hwif_data; int host_flags; struct ide_io_ports io_ports; scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int IDE_HFLAG_MMIO ;
 size_t SATA_CONTROL_OFFSET ;
 size_t SATA_ERROR_OFFSET ;
 size_t SATA_STATUS_OFFSET ;
 int memset (struct ide_io_ports*,int ,int) ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ pdev_is_sata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void init_mmio_iops_siimage(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct ide_host *host = pci_get_drvdata(dev);
 void *addr = host->host_priv;
 u8 ch = hwif->channel;
 struct ide_io_ports *io_ports = &hwif->io_ports;
 unsigned long base;




 hwif->host_flags |= IDE_HFLAG_MMIO;

 hwif->hwif_data = addr;





 memset(io_ports, 0, sizeof(*io_ports));

 base = (unsigned long)addr;
 if (ch)
  base += 0xC0;
 else
  base += 0x80;





 io_ports->data_addr = base;
 io_ports->error_addr = base + 1;
 io_ports->nsect_addr = base + 2;
 io_ports->lbal_addr = base + 3;
 io_ports->lbam_addr = base + 4;
 io_ports->lbah_addr = base + 5;
 io_ports->device_addr = base + 6;
 io_ports->status_addr = base + 7;
 io_ports->ctl_addr = base + 10;

 if (pdev_is_sata(dev)) {
  base = (unsigned long)addr;
  if (ch)
   base += 0x80;
  hwif->sata_scr[SATA_STATUS_OFFSET] = base + 0x104;
  hwif->sata_scr[SATA_ERROR_OFFSET] = base + 0x108;
  hwif->sata_scr[SATA_CONTROL_OFFSET] = base + 0x100;
 }

 hwif->irq = dev->irq;

 hwif->dma_base = (unsigned long)addr + (ch ? 0x08 : 0x00);
}
