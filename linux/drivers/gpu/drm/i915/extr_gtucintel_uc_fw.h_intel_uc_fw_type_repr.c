
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_uc_fw_type { ____Placeholder_intel_uc_fw_type } intel_uc_fw_type ;





__attribute__((used)) static inline const char *intel_uc_fw_type_repr(enum intel_uc_fw_type type)
{
 switch (type) {
 case 129:
  return "GuC";
 case 128:
  return "HuC";
 }
 return "uC";
}
