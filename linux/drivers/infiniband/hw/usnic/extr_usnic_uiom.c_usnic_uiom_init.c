
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 int iommu_present (int *) ;
 int pci_bus_type ;
 int usnic_err (char*) ;

int usnic_uiom_init(char *drv_name)
{
 if (!iommu_present(&pci_bus_type)) {
  usnic_err("IOMMU required but not present or enabled.  USNIC QPs will not function w/o enabling IOMMU\n");
  return -EPERM;
 }

 return 0;
}
