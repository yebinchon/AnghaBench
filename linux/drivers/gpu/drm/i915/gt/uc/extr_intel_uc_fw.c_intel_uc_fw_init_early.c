
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_uc_fw {int type; scalar_t__* path; scalar_t__* status; } ;
typedef enum intel_uc_fw_type { ____Placeholder_intel_uc_fw_type } intel_uc_fw_type ;
typedef enum intel_platform { ____Placeholder_intel_platform } intel_platform ;


 int BUILD_BUG_ON (int ) ;
 int GEM_BUG_ON (scalar_t__*) ;
 int INTEL_UC_FIRMWARE_DISABLED ;
 int INTEL_UC_FIRMWARE_NOT_SUPPORTED ;
 int INTEL_UC_FIRMWARE_SELECTED ;
 int INTEL_UC_FIRMWARE_UNINITIALIZED ;
 int __uc_fw_auto_select (struct intel_uc_fw*,int,int ) ;
 int __uc_fw_user_override (struct intel_uc_fw*) ;
 int intel_uc_fw_change_status (struct intel_uc_fw*,int ) ;

void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
       enum intel_uc_fw_type type, bool supported,
       enum intel_platform platform, u8 rev)
{




 BUILD_BUG_ON(INTEL_UC_FIRMWARE_UNINITIALIZED);
 GEM_BUG_ON(uc_fw->status);
 GEM_BUG_ON(uc_fw->path);

 uc_fw->type = type;

 if (supported) {
  __uc_fw_auto_select(uc_fw, platform, rev);
  __uc_fw_user_override(uc_fw);
 }

 intel_uc_fw_change_status(uc_fw, uc_fw->path ? *uc_fw->path ?
      INTEL_UC_FIRMWARE_SELECTED :
      INTEL_UC_FIRMWARE_DISABLED :
      INTEL_UC_FIRMWARE_NOT_SUPPORTED);
}
