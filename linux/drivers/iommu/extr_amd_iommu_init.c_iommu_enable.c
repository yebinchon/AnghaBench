
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int dummy; } ;


 int CONTROL_IOMMU_EN ;
 int iommu_feature_enable (struct amd_iommu*,int ) ;

__attribute__((used)) static void iommu_enable(struct amd_iommu *iommu)
{
 iommu_feature_enable(iommu, CONTROL_IOMMU_EN);
}
