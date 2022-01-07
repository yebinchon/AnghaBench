
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_register_driver (int *) ;
 int sp_pci_driver ;

int sp_pci_init(void)
{
 return pci_register_driver(&sp_pci_driver);
}
