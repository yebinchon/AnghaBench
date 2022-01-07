
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct amd_iommu {int dev; } ;


 int pci_write_config_dword (int ,int,int) ;

__attribute__((used)) static void iommu_write_l2(struct amd_iommu *iommu, u8 address, u32 val)
{
 pci_write_config_dword(iommu->dev, 0xf0, (address | 1 << 8));
 pci_write_config_dword(iommu->dev, 0xf4, val);
}
