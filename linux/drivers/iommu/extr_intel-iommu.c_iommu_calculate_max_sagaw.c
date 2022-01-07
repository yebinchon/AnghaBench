
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int dummy; } ;


 int MAX_AGAW_WIDTH ;
 int __iommu_calculate_agaw (struct intel_iommu*,int ) ;

int iommu_calculate_max_sagaw(struct intel_iommu *iommu)
{
 return __iommu_calculate_agaw(iommu, MAX_AGAW_WIDTH);
}
