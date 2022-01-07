
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc {int guc; } ;


 int intel_guc_is_submission_supported (int *) ;

__attribute__((used)) static inline bool intel_uc_supports_guc_submission(struct intel_uc *uc)
{
 return intel_guc_is_submission_supported(&uc->guc);
}
