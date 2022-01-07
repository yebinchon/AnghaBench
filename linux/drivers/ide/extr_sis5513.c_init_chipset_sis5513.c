
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
 int PCI_LATENCY_TIMER ;
 int chipset_family ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static int init_chipset_sis5513(struct pci_dev *dev)
{




 u8 reg;
 u16 regw;

 switch (chipset_family) {
 case 132:

  pci_read_config_word(dev, 0x50, &regw);
  if (regw & 0x08)
   pci_write_config_word(dev, 0x50, regw&0xfff7);
  pci_read_config_word(dev, 0x52, &regw);
  if (regw & 0x08)
   pci_write_config_word(dev, 0x52, regw&0xfff7);
  break;
 case 131:
 case 134:

  pci_write_config_byte(dev, PCI_LATENCY_TIMER, 0x80);

  pci_read_config_byte(dev, 0x49, &reg);
  if (!(reg & 0x01))
   pci_write_config_byte(dev, 0x49, reg|0x01);
  break;
 case 133:
 case 128:

  pci_write_config_byte(dev, PCI_LATENCY_TIMER, 0x10);


  pci_read_config_byte(dev, 0x52, &reg);
  if (!(reg & 0x04))
   pci_write_config_byte(dev, 0x52, reg|0x04);
  break;
 case 129:

  pci_read_config_byte(dev, 0x09, &reg);
  if ((reg & 0x0f) != 0x00)
   pci_write_config_byte(dev, 0x09, reg&0xf0);

 case 130:


  pci_read_config_byte(dev, 0x52, &reg);
  if (!(reg & 0x08))
   pci_write_config_byte(dev, 0x52, reg|0x08);
  break;
 }

 return 0;
}
