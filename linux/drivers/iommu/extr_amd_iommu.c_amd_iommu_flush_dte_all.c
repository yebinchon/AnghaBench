
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amd_iommu {int dummy; } ;


 int iommu_completion_wait (struct amd_iommu*) ;
 int iommu_flush_dte (struct amd_iommu*,int) ;

__attribute__((used)) static void amd_iommu_flush_dte_all(struct amd_iommu *iommu)
{
 u32 devid;

 for (devid = 0; devid <= 0xffff; ++devid)
  iommu_flush_dte(iommu, devid);

 iommu_completion_wait(iommu);
}
