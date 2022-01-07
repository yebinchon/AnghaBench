
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int submission_supported; } ;


 int __guc_submission_support (struct intel_guc*) ;

void intel_guc_submission_init_early(struct intel_guc *guc)
{
 guc->submission_supported = __guc_submission_support(guc);
}
