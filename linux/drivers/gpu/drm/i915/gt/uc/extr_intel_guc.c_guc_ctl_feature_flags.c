
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int dummy; } ;


 int GUC_CTL_DISABLE_SCHEDULER ;
 int intel_guc_is_submission_supported (struct intel_guc*) ;

__attribute__((used)) static u32 guc_ctl_feature_flags(struct intel_guc *guc)
{
 u32 flags = 0;

 if (!intel_guc_is_submission_supported(guc))
  flags |= GUC_CTL_DISABLE_SCHEDULER;

 return flags;
}
