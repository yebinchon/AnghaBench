
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc {int huc; } ;


 int intel_huc_is_enabled (int *) ;

__attribute__((used)) static inline bool intel_uc_uses_huc(struct intel_uc *uc)
{
 return intel_huc_is_enabled(&uc->huc);
}
