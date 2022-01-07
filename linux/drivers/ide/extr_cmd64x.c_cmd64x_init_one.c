
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int revision; } ;
struct ide_port_info {int udma_mask; int * dma_ops; int * port_ops; TYPE_1__* enablebits; } ;
struct TYPE_2__ {scalar_t__ reg; } ;


 int cmd646_rev1_dma_ops ;
 struct ide_port_info* cmd64x_chipsets ;
 int cmd64x_port_ops ;
 int ide_pci_init_one (struct pci_dev*,struct ide_port_info*,int *) ;

__attribute__((used)) static int cmd64x_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct ide_port_info d;
 u8 idx = id->driver_data;

 d = cmd64x_chipsets[idx];

 if (idx == 1) {
  if (dev->revision < 5) {
   d.udma_mask = 0x00;





   if (dev->revision < 3) {
    d.enablebits[0].reg = 0;
    d.port_ops = &cmd64x_port_ops;
    if (dev->revision == 1)
     d.dma_ops = &cmd646_rev1_dma_ops;
   }
  }
 }

 return ide_pci_init_one(dev, &d, ((void*)0));
}
