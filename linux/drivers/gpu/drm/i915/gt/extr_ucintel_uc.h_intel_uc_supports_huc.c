
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc {int dummy; } ;


 int intel_uc_supports_guc (struct intel_uc*) ;

__attribute__((used)) static inline bool intel_uc_supports_huc(struct intel_uc *uc)
{
 return intel_uc_supports_guc(uc);
}
