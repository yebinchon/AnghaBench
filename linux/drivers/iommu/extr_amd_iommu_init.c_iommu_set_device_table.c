
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amd_iommu {int * mmio_base; } ;
typedef int entry ;


 int BUG_ON (int ) ;
 int MMIO_DEV_TABLE_OFFSET ;
 int amd_iommu_dev_table ;
 int dev_table_size ;
 int iommu_virt_to_phys (int ) ;
 int memcpy_toio (int *,int*,int) ;

__attribute__((used)) static void iommu_set_device_table(struct amd_iommu *iommu)
{
 u64 entry;

 BUG_ON(iommu->mmio_base == ((void*)0));

 entry = iommu_virt_to_phys(amd_iommu_dev_table);
 entry |= (dev_table_size >> 12) - 1;
 memcpy_toio(iommu->mmio_base + MMIO_DEV_TABLE_OFFSET,
   &entry, sizeof(entry));
}
