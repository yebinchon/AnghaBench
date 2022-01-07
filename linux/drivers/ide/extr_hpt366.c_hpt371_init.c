
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void hpt371_init(struct pci_dev *dev)
{
 u8 mcr1 = 0;







 pci_read_config_byte(dev, 0x50, &mcr1);
 if (mcr1 & 0x04)
  pci_write_config_byte(dev, 0x50, mcr1 & ~0x04);
}
