
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int mmio_base; } ;


 int CONTROL_CMDBUF_EN ;
 int CONTROL_EVT_INT_EN ;
 int CONTROL_EVT_LOG_EN ;
 int CONTROL_GAINT_EN ;
 int CONTROL_GALOG_EN ;
 int CONTROL_IOMMU_EN ;
 int iommu_feature_disable (struct amd_iommu*,int ) ;

__attribute__((used)) static void iommu_disable(struct amd_iommu *iommu)
{
 if (!iommu->mmio_base)
  return;


 iommu_feature_disable(iommu, CONTROL_CMDBUF_EN);


 iommu_feature_disable(iommu, CONTROL_EVT_INT_EN);
 iommu_feature_disable(iommu, CONTROL_EVT_LOG_EN);


 iommu_feature_disable(iommu, CONTROL_GALOG_EN);
 iommu_feature_disable(iommu, CONTROL_GAINT_EN);


 iommu_feature_disable(iommu, CONTROL_IOMMU_EN);
}
