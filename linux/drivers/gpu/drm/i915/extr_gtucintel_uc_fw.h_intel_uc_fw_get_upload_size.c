
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uc_fw {int dummy; } ;


 int __intel_uc_fw_get_upload_size (struct intel_uc_fw*) ;
 int intel_uc_fw_is_available (struct intel_uc_fw*) ;

__attribute__((used)) static inline u32 intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
{
 if (!intel_uc_fw_is_available(uc_fw))
  return 0;

 return __intel_uc_fw_get_upload_size(uc_fw);
}
