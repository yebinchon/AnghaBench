
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static int init_chipset_ich(struct pci_dev *dev)
{
 u32 extra = 0;

 pci_read_config_dword(dev, 0x54, &extra);
 pci_write_config_dword(dev, 0x54, extra | 0x400);

 return 0;
}
