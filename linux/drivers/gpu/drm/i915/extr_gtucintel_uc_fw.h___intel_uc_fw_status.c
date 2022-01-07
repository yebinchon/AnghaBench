
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {scalar_t__ status; } ;
typedef enum intel_uc_fw_status { ____Placeholder_intel_uc_fw_status } intel_uc_fw_status ;


 int GEM_BUG_ON (int) ;
 scalar_t__ INTEL_UC_FIRMWARE_UNINITIALIZED ;

__attribute__((used)) static inline enum intel_uc_fw_status
__intel_uc_fw_status(struct intel_uc_fw *uc_fw)
{

 GEM_BUG_ON(uc_fw->status == INTEL_UC_FIRMWARE_UNINITIALIZED);
 return uc_fw->status;
}
