
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int name; scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int MRDMODE_INTR_CH0 ;
 int MRDMODE_INTR_CH1 ;
 int inb (unsigned long) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 int pr_debug (char*,int ,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int cmd648_test_irq(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 unsigned long base = pci_resource_start(dev, 4);
 u8 irq_mask = hwif->channel ? MRDMODE_INTR_CH1 :
        MRDMODE_INTR_CH0;
 u8 mrdmode = inb(base + 1);

 pr_debug("%s: mrdmode: 0x%02x irq_mask: 0x%02x\n",
   hwif->name, mrdmode, irq_mask);

 return (mrdmode & irq_mask) ? 1 : 0;
}
