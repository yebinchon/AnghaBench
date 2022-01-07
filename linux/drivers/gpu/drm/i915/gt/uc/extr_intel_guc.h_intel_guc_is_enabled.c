
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int fw; } ;


 int intel_uc_fw_is_enabled (int *) ;

__attribute__((used)) static inline bool intel_guc_is_enabled(struct intel_guc *guc)
{
 return intel_uc_fw_is_enabled(&guc->fw);
}
