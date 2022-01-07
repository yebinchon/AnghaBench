
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amd_iommu {int dummy; } ;


 scalar_t__ MAX_DEV_TABLE_ENTRIES ;
 int iommu_completion_wait (struct amd_iommu*) ;
 int iommu_flush_irt (struct amd_iommu*,scalar_t__) ;

__attribute__((used)) static void amd_iommu_flush_irt_all(struct amd_iommu *iommu)
{
 u32 devid;

 for (devid = 0; devid <= MAX_DEV_TABLE_ENTRIES; devid++)
  iommu_flush_irt(iommu, devid);

 iommu_completion_wait(iommu);
}
