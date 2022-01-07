
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc {int dummy; } ;
struct TYPE_2__ {int enable_guc; } ;


 int ENABLE_GUC_SUBMISSION ;
 TYPE_1__ i915_modparams ;
 int intel_guc_is_supported (struct intel_guc*) ;

__attribute__((used)) static bool __guc_submission_support(struct intel_guc *guc)
{

 return 0;

 if (!intel_guc_is_supported(guc))
  return 0;

 return i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION;
}
