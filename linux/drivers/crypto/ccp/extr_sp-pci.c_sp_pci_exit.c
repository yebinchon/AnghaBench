
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_unregister_driver (int *) ;
 int sp_pci_driver ;

void sp_pci_exit(void)
{
 pci_unregister_driver(&sp_pci_driver);
}
