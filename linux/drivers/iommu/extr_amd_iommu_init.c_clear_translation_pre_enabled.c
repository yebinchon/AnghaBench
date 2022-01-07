
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_iommu {int flags; } ;


 int AMD_IOMMU_FLAG_TRANS_PRE_ENABLED ;

__attribute__((used)) static void clear_translation_pre_enabled(struct amd_iommu *iommu)
{
 iommu->flags &= ~AMD_IOMMU_FLAG_TRANS_PRE_ENABLED;
}
