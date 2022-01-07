
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {scalar_t__ mmio_msg; int fw; } ;


 int intel_uc_fw_sanitize (int *) ;

__attribute__((used)) static inline int intel_guc_sanitize(struct intel_guc *guc)
{
 intel_uc_fw_sanitize(&guc->fw);
 guc->mmio_msg = 0;

 return 0;
}
