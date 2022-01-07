
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int user_overridden; } ;



__attribute__((used)) static inline bool intel_uc_fw_is_overridden(const struct intel_uc_fw *uc_fw)
{
 return uc_fw->user_overridden;
}
