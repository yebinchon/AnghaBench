
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc_return (int *) ;
 int pci_indexes ;

int edac_pci_alloc_index(void)
{
 return atomic_inc_return(&pci_indexes) - 1;
}
