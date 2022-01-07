
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int type; char const* path; int user_overridden; } ;




 char* __override_guc_firmware_path () ;
 char* __override_huc_firmware_path () ;
 scalar_t__ unlikely (char const*) ;

__attribute__((used)) static void __uc_fw_user_override(struct intel_uc_fw *uc_fw)
{
 const char *path = ((void*)0);

 switch (uc_fw->type) {
 case 129:
  path = __override_guc_firmware_path();
  break;
 case 128:
  path = __override_huc_firmware_path();
  break;
 }

 if (unlikely(path)) {
  uc_fw->path = path;
  uc_fw->user_overridden = 1;
 }
}
