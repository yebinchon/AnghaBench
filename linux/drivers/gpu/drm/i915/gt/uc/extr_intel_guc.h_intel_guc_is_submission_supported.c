
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int submission_supported; } ;



__attribute__((used)) static inline bool intel_guc_is_submission_supported(struct intel_guc *guc)
{
 return guc->submission_supported;
}
