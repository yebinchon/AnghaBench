
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PCI_CLK_33 ;
 unsigned int PCI_CLK_33A ;
 unsigned char SC1200_REV_B1 ;
 unsigned char inb (int) ;
 unsigned int inw (int) ;

__attribute__((used)) static unsigned short sc1200_get_pci_clock (void)
{
 unsigned char chip_id, silicon_revision;
 unsigned int pci_clock;




 chip_id = inb (0x903c);
 silicon_revision = inb (0x903d);


 if (chip_id == 0x04 && silicon_revision < SC1200_REV_B1) {
  pci_clock = PCI_CLK_33;
 } else {



  pci_clock = inw (0x901e);
  pci_clock >>= 8;
  pci_clock &= 0x03;
  if (pci_clock == PCI_CLK_33A)
   pci_clock = PCI_CLK_33;
 }
 return pci_clock;
}
