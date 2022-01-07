
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int MRDMODE_INTR_CH0 ;
 int MRDMODE_INTR_CH1 ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cmd648_clear_irq(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 unsigned long base = pci_resource_start(dev, 4);
 u8 irq_mask = hwif->channel ? MRDMODE_INTR_CH1 :
        MRDMODE_INTR_CH0;
 u8 mrdmode = inb(base + 1);


 outb((mrdmode & ~(MRDMODE_INTR_CH0 | MRDMODE_INTR_CH1)) | irq_mask,
      base + 1);
}
