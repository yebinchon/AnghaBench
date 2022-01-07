
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int dummy; } ;


 int FEATURE_IA ;
 int amd_iommu_flush_all (struct amd_iommu*) ;
 int amd_iommu_flush_dte_all (struct amd_iommu*) ;
 int amd_iommu_flush_irt_all (struct amd_iommu*) ;
 int amd_iommu_flush_tlb_all (struct amd_iommu*) ;
 scalar_t__ iommu_feature (struct amd_iommu*,int ) ;

void iommu_flush_all_caches(struct amd_iommu *iommu)
{
 if (iommu_feature(iommu, FEATURE_IA)) {
  amd_iommu_flush_all(iommu);
 } else {
  amd_iommu_flush_dte_all(iommu);
  amd_iommu_flush_irt_all(iommu);
  amd_iommu_flush_tlb_all(iommu);
 }
}
