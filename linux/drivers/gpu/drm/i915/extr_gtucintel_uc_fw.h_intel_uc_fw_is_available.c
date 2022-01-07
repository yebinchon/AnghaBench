
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int dummy; } ;


 scalar_t__ INTEL_UC_FIRMWARE_AVAILABLE ;
 scalar_t__ __intel_uc_fw_status (struct intel_uc_fw*) ;

__attribute__((used)) static inline bool intel_uc_fw_is_available(struct intel_uc_fw *uc_fw)
{
 return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_AVAILABLE;
}
