
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc {int dummy; } ;


 int __uc_sanitize (struct intel_uc*) ;
 int intel_uc_supports_guc (struct intel_uc*) ;

void intel_uc_sanitize(struct intel_uc *uc)
{
 if (!intel_uc_supports_guc(uc))
  return;

 __uc_sanitize(uc);
}
