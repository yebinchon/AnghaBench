
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iommu_cap { ____Placeholder_iommu_cap } iommu_cap ;





__attribute__((used)) static bool s390_iommu_capable(enum iommu_cap cap)
{
 switch (cap) {
 case 129:
  return 1;
 case 128:
  return 1;
 default:
  return 0;
 }
}
