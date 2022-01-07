
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_pci {int pci_dev; } ;


 int pci_disable_msix (int ) ;

__attribute__((used)) static void adf_disable_msix(struct adf_accel_pci *pci_dev_info)
{
 pci_disable_msix(pci_dev_info->pci_dev);
}
