
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int name; scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ARTTIM23 ;
 int ARTTIM23_INTR_CH1 ;
 int CFR ;
 int CFR_INTR_CH0 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pr_debug (char*,int ,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int cmd64x_test_irq(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 int irq_reg = hwif->channel ? ARTTIM23 : CFR;
 u8 irq_mask = hwif->channel ? ARTTIM23_INTR_CH1 :
        CFR_INTR_CH0;
 u8 irq_stat = 0;

 (void) pci_read_config_byte(dev, irq_reg, &irq_stat);

 pr_debug("%s: irq_stat: 0x%02x irq_mask: 0x%02x\n",
   hwif->name, irq_stat, irq_mask);

 return (irq_stat & irq_mask) ? 1 : 0;
}
