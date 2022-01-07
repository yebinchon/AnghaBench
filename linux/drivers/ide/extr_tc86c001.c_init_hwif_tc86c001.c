
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {unsigned long config_data; int rqsize; int dma_base; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int inw (unsigned long) ;
 int outw (int,unsigned long) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void init_hwif_tc86c001(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 unsigned long sc_base = pci_resource_start(dev, 5);
 u16 scr1 = inw(sc_base + 0x00);


 outw(scr1 | 0x8000, sc_base + 0x00);


 outw(scr1 | 0x4000, sc_base + 0x00);


 outw(scr1 & ~0xc000, sc_base + 0x00);


 hwif->config_data = sc_base;

 if (!hwif->dma_base)
  return;





 outw(0x0003, sc_base + 0x0c);


 hwif->rqsize = 0xffff;
}
