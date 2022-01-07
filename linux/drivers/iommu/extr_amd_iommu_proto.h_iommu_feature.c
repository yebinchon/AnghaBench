
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amd_iommu {int cap; int features; } ;


 int IOMMU_CAP_EFR ;

__attribute__((used)) static inline bool iommu_feature(struct amd_iommu *iommu, u64 f)
{
 if (!(iommu->cap & (1 << IOMMU_CAP_EFR)))
  return 0;

 return !!(iommu->features & f);
}
