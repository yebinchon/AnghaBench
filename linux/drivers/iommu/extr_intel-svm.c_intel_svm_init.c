
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int cap; } ;


 int EINVAL ;
 int X86_FEATURE_GBPAGES ;
 int X86_FEATURE_LA57 ;
 int cap_5lp_support (int ) ;
 int cap_fl1gp_support (int ) ;
 scalar_t__ cpu_feature_enabled (int ) ;

int intel_svm_init(struct intel_iommu *iommu)
{
 if (cpu_feature_enabled(X86_FEATURE_GBPAGES) &&
   !cap_fl1gp_support(iommu->cap))
  return -EINVAL;

 if (cpu_feature_enabled(X86_FEATURE_LA57) &&
   !cap_5lp_support(iommu->cap))
  return -EINVAL;

 return 0;
}
