
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int dummy; } ;


 int INTEL_UC_FIRMWARE_AVAILABLE ;
 int intel_uc_fw_change_status (struct intel_uc_fw*,int ) ;
 scalar_t__ intel_uc_fw_is_loaded (struct intel_uc_fw*) ;

__attribute__((used)) static inline void intel_uc_fw_sanitize(struct intel_uc_fw *uc_fw)
{
 if (intel_uc_fw_is_loaded(uc_fw))
  intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
}
