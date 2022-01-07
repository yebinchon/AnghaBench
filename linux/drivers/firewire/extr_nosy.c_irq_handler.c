
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcilynx {int rcv_start_pcl_bus; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LINK_INT_PHY_BUSRESET ;
 int LINK_INT_STATUS ;
 int PCI_INT_DMA0_HLT ;
 int PCI_INT_INT_PEND ;
 int PCI_INT_P1394_INT ;
 int PCI_INT_STATUS ;
 int bus_reset_irq_handler (struct pcilynx*) ;
 int packet_irq_handler (struct pcilynx*) ;
 int reg_read (struct pcilynx*,int ) ;
 int reg_write (struct pcilynx*,int ,int) ;
 int run_pcl (struct pcilynx*,int ,int ) ;

__attribute__((used)) static irqreturn_t
irq_handler(int irq, void *device)
{
 struct pcilynx *lynx = device;
 u32 pci_int_status;

 pci_int_status = reg_read(lynx, PCI_INT_STATUS);

 if (pci_int_status == ~0)

  return IRQ_NONE;

 if ((pci_int_status & PCI_INT_INT_PEND) == 0)

  return IRQ_NONE;

 if ((pci_int_status & PCI_INT_P1394_INT) != 0) {
  u32 link_int_status;

  link_int_status = reg_read(lynx, LINK_INT_STATUS);
  reg_write(lynx, LINK_INT_STATUS, link_int_status);

  if ((link_int_status & LINK_INT_PHY_BUSRESET) > 0)
   bus_reset_irq_handler(lynx);
 }





 reg_write(lynx, PCI_INT_STATUS, pci_int_status);

 if ((pci_int_status & PCI_INT_DMA0_HLT) > 0) {
  packet_irq_handler(lynx);
  run_pcl(lynx, lynx->rcv_start_pcl_bus, 0);
 }

 return IRQ_HANDLED;
}
