
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PCI_DEVFN (unsigned int,unsigned int) ;
 int sscanf (char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int vga_pci_str_to_vars(char *buf, int count, unsigned int *domain,
          unsigned int *bus, unsigned int *devfn)
{
 int n;
 unsigned int slot, func;


 n = sscanf(buf, "PCI:%x:%x:%x.%x", domain, bus, &slot, &func);
 if (n != 4)
  return 0;

 *devfn = PCI_DEVFN(slot, func);

 return 1;
}
