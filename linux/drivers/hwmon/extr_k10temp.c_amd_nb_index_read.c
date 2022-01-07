
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int bus; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nb_smu_ind_mutex ;
 int pci_bus_read_config_dword (int ,unsigned int,unsigned int,int *) ;
 int pci_bus_write_config_dword (int ,unsigned int,unsigned int,int) ;

__attribute__((used)) static void amd_nb_index_read(struct pci_dev *pdev, unsigned int devfn,
         unsigned int base, int offset, u32 *val)
{
 mutex_lock(&nb_smu_ind_mutex);
 pci_bus_write_config_dword(pdev->bus, devfn,
       base, offset);
 pci_bus_read_config_dword(pdev->bus, devfn,
      base + 4, val);
 mutex_unlock(&nb_smu_ind_mutex);
}
