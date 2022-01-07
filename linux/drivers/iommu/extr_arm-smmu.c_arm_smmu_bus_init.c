
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amba_bustype ;
 int arm_smmu_ops ;
 int bus_set_iommu (int *,int *) ;
 int fsl_mc_bus_type ;
 int iommu_present (int *) ;
 int pci_bus_type ;
 int pci_request_acs () ;
 int platform_bus_type ;

__attribute__((used)) static void arm_smmu_bus_init(void)
{

 if (!iommu_present(&platform_bus_type))
  bus_set_iommu(&platform_bus_type, &arm_smmu_ops);
}
